# Patient Portal API Documentation

Source analyzed: Vue/Quasar frontend under `innsof/src`.

This document describes the API calls consumed by the frontend. The backend implementation is not present in this repository, so response models are documented from TypeScript models and from fields actually read by the UI. Fields marked as inferred should be validated against backend controllers or API traces.

## Base Configuration

| Item | Value |
| --- | --- |
| Base API URL | `http://localhost:4255/api/` |
| Static file root | `http://localhost:4255/` |
| Axios instance | `src/api/axios-config.ts` |
| Auth storage | `localStorage["user"]` |
| Unauthorized handling | HTTP `401` redirects to `/` |
| Not found handling | HTTP `404` redirects to `/404` |

## Common Headers

### Public JSON request
 
Used by login and OTP endpoints.

```http
Content-Type: application/json
```

### Authenticated JSON request

Used by most service calls after OTP/login success.

```httpl
Authorization: Bearer <accessToken>
Content-Type: application/json
```

The token comes from:

```ts
JSON.parse(localStorage.getItem("user") || "{}").accessToken
```

### Authenticated file upload

Used by `file/upload`.

```http
Authorization: Bearer <accessToken>
Content-Type: multipart/form-data
```

## Shared Response Behavior

Axios returns the full response object to most callers. UI code commonly reads:

```ts
response.data
response.status
```

Important: in several places the code checks `response.status` as if it were an application status flag, but Axios `response.status` is the numeric HTTP status. Some endpoints also return `response.data.status`. Backend responses should preferably use a consistent envelope:

```json
{
  "status": true,
  "message": "Success",
  "data": {}
}
```

However, existing frontend code also expects raw arrays or raw objects for many calls.

## Authentication APIs

### Login

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/user/auth` |
| Service | `AuthService.login` |
| Auth required | No |

Request body:

```json
{
  "username": "admin",
  "password": "password"
}
```

Response model:

```ts
type LoginResponse = {
  Id?: string;
  Username?: string;
  EmailID?: string;
  MobileNo?: string;
  FCM_Token?: string;
  accessToken: string;
  Members?: UserMember[];
  notificationcount?: number;
  [key: string]: unknown;
};
```

Client behavior:

- If `response.data.accessToken` exists, the whole response data object is stored in `localStorage["user"]`.
- Returns `response.data`.

### Patient Portal Mobile Login / OTP Request

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/user/ppauth` |
| Service | `AuthService.pplogin` |
| Auth required | No |

Request body:

```json
{
  "mobileNo": "9999999999"
}
```

Observed response usage:

```ts
type PpLoginResponse = {
  otp?: string;
  message?: string;
  status?: boolean;
  [key: string]: unknown;
};
```

Client behavior:

- `res.otp` is copied to `registerOrLoginForm.id_otp`.
- No token is stored at this step.

### Patient Portal OTP Verification

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/user/ppauthotp` |
| Service | `AuthService.pploginotp` |
| Auth required | No |

Request body:

```json
{
  "mobileNo": "9999999999",
  "otp": "123456"
}
```

Response model:

```ts
type PpOtpResponse = {
  Id?: string;
  Username?: string;
  EmailID?: string;
  MobileNo?: string;
  accessToken: string;
  Members?: UserMember[];
  notificationcount?: number;
  [key: string]: unknown;
};
```

Client behavior:

- If `accessToken` exists, stores the whole response data object in `localStorage["user"]`.

### Register

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/register` |
| Service | `AuthService.register` |
| Auth required | No |

Request body:

```json
{
  "username": "demo",
  "email": "demo@example.com",
  "password": "password"
}
```

Response model: not consumed in current UI.

## Portal Service API

Most Patient Portal operations use one generic endpoint:

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/Apm/service` |
| Service | `CommonService.serviceHandler` |
| Auth required | Yes |

Request envelope:

```json
{
  "type": "PP0001",
  "content": "{\"example\":\"value\"}"
}
```

`content` is a JSON string, not a nested JSON object.

### Portal Service Codes

| Code | Name | Purpose |
| --- | --- | --- |
| `PP0001` | `getDoctorList` | Get available doctors |
| `PP0002` | `getDoctorAvailableDate` | Get available appointment dates for a doctor |
| `PP0003` | `getDoctorAvailableDateTime` | Get available time slots for a doctor/date |
| `PP0008` | `saveAppointment` | Create appointment |
| `PP0009` | `saveRshAppointment` | Reschedule appointment, constant exists but no active usage found |
| `PP0010` | `cancelAppointment` | Portal cancel appointment, constant exists but current UI uses HMS `HMS0089` |
| `PP0011` | `getAppointment` | Get appointment by id, code is commented in `BookingStatus.vue` |
| `PP0012` | `getAppointmentList` | Constant exists; no active usage found |
| `PP0013` | `getDepartmentList` | Get departments |
| `PP0014` | `getfilterOptions` | Get doctor filter options |
| `PP0016` | `getVisitHistory` | Get visit/consultation history |
| `PP0038` | `portalHomeDetails` | Get home page banner/details |
| `PP0039` | `updateStars` | Update visit/doctor star rating |

### Get Home Details

Request:

```json
{
  "type": "PP0038",
  "content": "{\"id_client\":1}"
}
```

Response body:

```ts
type PortalHomeDetailsResponse = {
  banner?: PortalBanner[];
  [key: string]: unknown;
};

type PortalBanner = {
  id: string | number;
  content_type: "HOMEBANNER" | "COUNTERBANNER" | "DESCRIPTIONBANNER" | "FOOTERBANNER" | string;
  [key: string]: unknown;
};
```

Static banner assets are loaded from:

```text
http://localhost:4255/uploads/banner/
```

### Get Department List

Request:

```json
{
  "type": "PP0013",
  "content": "{}"
}
```

Response body:

```ts
type DepartmentListResponse = Array<{
  id_dept?: string | number;
  dept_name?: string;
  isSelected?: boolean;
  [key: string]: unknown;
}>;
```

### Get Doctor List

Request:

```json
{
  "type": "PP0001",
  "content": "{}"
}
```

Response body:

```ts
type DoctorListResponse = DoctorModel[];

type DoctorModel = {
  id_busunit: string;
  id_dept: string;
  dept_name: string;
  id_employee: string;
  employee_id: string;
  employee_name: string;
  experience: string;
  branch: string;
  cons_fee: string;
  ID_Item: string;
  availability: string;
  online_cons_fee: string;
  isOnline: string;
  profileUrl: string;
  busunit_name: string;
  busunit_bio: string;
  busunit_img: string;
  Language_Known: Array<{ lang_cd?: string; [key: string]: unknown }>;
};
```

### Get Doctor Available Dates

Request:

```json
{
  "type": "PP0002",
  "content": "{\"id_doctor\":\"101\",\"currDate\":\"2026-06-11\"}"
}
```

Response body:

```ts
type DoctorDateSlotResponse = Array<{
  shiftDate: string;
  [key: string]: unknown;
}>;
```

### Get Doctor Available Time Slots

Request:

```json
{
  "type": "PP0003",
  "content": "{\"id_doctor\":\"101\",\"shift_dt\":\"2026-06-11\"}"
}
```

Response body:

```ts
type DoctorTimeSlotResponse = {
  slots: Array<{
    tod: string;
    appdttm: string;
    [key: string]: unknown;
  }>;
  [key: string]: unknown;
};
```

### Save Appointment

Request:

```json
{
  "type": "PP0008",
  "content": "{\"id\":\"0\",\"id_employee\":\"101\",\"id_busunit\":\"1\",\"appmnt_mode\":\"Offline\",\"appmnt_dttm\":\"2026-06-11T10:00:00\",\"appmnt_dt\":\"2026-06-11\",\"appmnt_time\":\"10:00 AM\",\"id_customer\":\"1299\",\"customer_name\":\"Patient Name\",\"age\":30,\"mobile_no\":\"9999999999\",\"gender\":\"Male\",\"patient_mobileno\":\"9999999999\",\"national_id\":\"ABC123\",\"email_id\":\"patient@example.com\"}"
}
```

Content fields:

| Field | Type | Notes |
| --- | --- | --- |
| `id` | string/number | Slot/appointment id from selected booking detail |
| `id_employee` | string/number | Doctor employee id |
| `id_busunit` | string/number | Branch/business unit id |
| `appmnt_mode` | string | Appointment mode |
| `appmnt_dttm` | string | Appointment datetime |
| `appmnt_dt` | string | Appointment date |
| `appmnt_time` | string | Appointment display time |
| `id_customer` | string/number | Existing patient/customer id, if selected |
| `customer_name` | string | Patient name |
| `age` | number | Used in `AppointmentBooking.vue`; omitted in some rebooking flows |
| `mobile_no` | string | Patient mobile number |
| `gender` | string | Used in `AppointmentBooking.vue`; omitted in some rebooking flows |
| `patient_mobileno` | string | Usually same as `mobile_no` |
| `national_id` | string | National/SSN id |
| `email_id` | string | Patient email |

Observed response usage:

```ts
type SaveAppointmentResponse = {
  data: AppointmentModel | { data?: AppointmentModel; [key: string]: unknown };
  status?: boolean;
};

type AppointmentModel = {
  Id: string;
  ID_Employee: string;
  Employee_Name: string;
  Employee_Bio: string;
  Employee_Img: string;
  Busunit_Name: string;
  Busunit_Bio: string;
  Busunit_Img: string;
  Appmnt_Mode: string;
  Appmnt_Dttm: string;
  Appmnt_Dt: string;
  Appmnt_Time: string;
  ID_Busunit: string;
  ID_Site: string;
  ID_Customer: string;
  Customer_Name: string;
  Patient_MobileNo: string;
  Mobile_No: string;
  Email_ID: string;
  National_ID: string;
};
```

### Get Filter Options

Request:

```json
{
  "type": "PP0014",
  "content": "{}"
}
```

Response body:

```ts
type FilterOptionsResponse = {
  locationList?: Array<{ id_location: string | number; isSelected?: boolean; [key: string]: unknown }>;
  departmentList?: Array<{ id_dept: string | number; isSelected?: boolean; [key: string]: unknown }>;
  languageList?: Array<{ lang_cd?: string; isSelected?: boolean; [key: string]: unknown }>;
  [key: string]: unknown;
};
```

### Get Visit History

Request:

```json
{
  "type": "PP0016",
  "content": "{\"id_customer\":1299,\"status\":\"ALL\"}"
}
```

`status` is optional in some screens.

Response body:

```ts
type VisitHistoryResponse = Array<{
  id?: string | number;
  id_cons?: string | number;
  ID_CUSTOMER?: string | number;
  id_employee?: string | number;
  app_id?: string | number;
  [key: string]: unknown;
}>;
```

### Update Stars

Request:

```json
{
  "type": "PP0039",
  "content": "{\"id_customer\":1299,\"stars\":5,\"id_cons\":1001,\"id_doctor\":101,\"id_client\":1,\"mobileno\":\"9999999999\"}"
}
```

Response body:

```ts
type UpdateStarsResponse = Array<VisitHistoryResponse[number]>;
```

The UI replaces the updated visit row with `response.data[0]`.

## HMS Operations Through `/api/Apm/service`

The Patient Portal also uses a small set of HMS service codes through the same generic service endpoint.

### Cancel Appointment

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/Apm/service` |
| Type | `HMS0089` |
| Auth required | Yes |

Request:

```json
{
  "type": "HMS0089",
  "content": "{\"id_appmnt\":12345}"
}
```

Response body:

```ts
type CancelAppointmentResponse = {
  status: boolean;
  message?: string;
  [key: string]: unknown;
};
```

### Get Patient Basic Details

Request:

```json
{
  "type": "HMS0034",
  "content": "{\"id_customer\":1299}"
}
```

Use `id_customer: 0` to open a new patient form.

Response body:

```ts
type PatientBasicDetailsResponse = PatientDetails & {
  translate?: unknown;
};
```

### Save Patient Basic Details

Request:

```json
{
  "type": "HMS0035",
  "content": "{\"id_customer\":0,\"customer_id\":\"New\",\"id_setid\":4,\"customer_name\":\"Patient Name\",\"customer_status\":\"ACTIVE\",\"customer_type\":\"PATIENT\",\"gender\":\"Male\",\"city\":\"City\",\"street\":\"Street\",\"state\":\"State\",\"mobile_no\":9999999999,\"email\":\"patient@example.com\",\"dob\":\"1996-01-01\",\"age\":30,\"ref_by\":\"\",\"occupation\":\"\",\"blood_group\":\"\",\"lang_prf\":\"English\",\"profile_img\":null,\"members\":[],\"history\":[]}"
}
```

Patient details model:

```ts
type PatientDetails = {
  id_customer: number | string;
  customer_id: string;
  id_setid: number | string | null;
  customer_name: string;
  customer_status: string;
  customer_type: "PATIENT" | string;
  gender: string;
  city?: string | null;
  street?: string | null;
  state?: string | null;
  mobile_no?: number | string | null;
  email?: string | null;
  dob?: string | Date | null;
  age?: number | null;
  ref_by?: string;
  occupation?: string;
  blood_group?: string;
  lang_prf?: string;
  profile_img?: string | null;
  members: Array<{
    id_customer: number | string;
    relation: string | null;
    id_patient: number | null;
    seq_no: number;
  }>;
  history: Array<{
    id: number | string;
    text?: string | null;
    seq_no: number;
  }>;
};
```

Response body:

```ts
type SavePatientResponse = {
  status: boolean;
  customer_id: string;
  id_customer: number | string;
  message?: string;
};
```

## File Upload API

### Upload File

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/file/upload` |
| Service | `CommonService.uploadFileInfo` |
| Auth required | Yes |
| Content type | `multipart/form-data` |

Patient profile image request form data:

| Form field | Example | Notes |
| --- | --- | --- |
| `pathidentifier` | `PatientProfileImage` | Backend upload category |
| `folderidentifier` | `CUS001` | Usually saved patient `customer_id` |
| `uploads` | binary file | Filename passed from `patient.profile_img` |

Response model: not inspected by UI beyond truthiness of the Axios response.

Patient image static path:

```text
http://localhost:4255/uploads/patient/<customer_id>/<profile_img>
```

## Report APIs

### Download Consultation Report

| Field | Value |
| --- | --- |
| Method | `GET` |
| URL | `/api/Apm/Report` |
| Service | `CommonService.downloadFileInfo` |
| Auth required | Yes |

Query parameters:

```json
{
  "id_cons": 1001,
  "id_customer": 1299,
  "type": "Lab"
}
```

Response body:

```ts
type ReportDownloadResponse = {
  isSave: boolean;
  pdfArray: string;
  message?: string;
};
```

`pdfArray` is expected to be a base64-encoded PDF.

### Dynamic Report Data

| Field | Value |
| --- | --- |
| Method | `GET` |
| URL | dynamic `reportURL` prop |
| Service | `CommonService.getReportInfo` |
| Auth required | Yes |

Query parameters: dynamic `reportParams` object.

Response body:

```ts
type DynamicReportDataResponse = unknown[];
```

## Generic Page Metadata APIs

These are reusable ERP/page-builder endpoints consumed by generic components and helpers.

### Page Search

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/page/search` |
| Service | `CommonService.getPageSearch` |
| Auth required | Yes |

Request body:

```json
{
  "id_page": 10,
  "query": "name like '%abc%'",
  "sOrder": "",
  "years": null,
  "quarters": null,
  "id_user": 1
}
```

Response body: raw row array.

```ts
type PageSearchResponse = Array<Record<string, unknown>>;
```

### From Grid Search

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/page/fromgridsearch` |
| Service | `CommonService.getFromGridSearch` |
| Auth required | Yes |

Request body:

```json
{
  "id_page": 10,
  "type": "DETAIL_GRID",
  "query": "name like '%abc%'",
  "sOrder": "",
  "id_user": 1
}
```

Response body: raw row array.

### Page Info

| Field | Value |
| --- | --- |
| Method | `GET` |
| URL | `/api/page/info` |
| Service | `CommonService.getPageInfo` |
| Auth required | Yes |

Query parameters: dynamic `params` object.

Response body: dynamic page definition object.

### Page Lookup

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/page/lookup` |
| Service | `CommonService.getPageLookup` |
| Auth required | Yes |

Important: callers pass a JSON string as the request body.

Request body example:

```json
"{\"id_page\":0,\"type\":\"Customer\",\"query\":\"customer_name like '%john%'\",\"sOrder\":\"\",\"id_user\":1,\"addParams\":null}"
```

Decoded lookup payload:

```ts
type PageLookupRequest = {
  id_page: number;
  type: string;
  query: string;
  sOrder: string;
  id_user: number | string;
  addParams?: string | null;
};
```

Response body:

```ts
type PageLookupResponse = Array<Record<string, unknown>>;
```

### Page Record Info

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/page/edit` |
| Service | `CommonService.getPageRecordInfo` |
| Auth required | Yes |

Request body:

```json
{
  "id_page": 10,
  "id_record": 123,
  "type": "DISPLAY",
  "fromgridtype": "DETAIL_GRID"
}
```

`fromgridtype` is only sent when `type` is `FROMGRID`.

Response body: dynamic page record object.

### Save Page Record

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/page/save` |
| Service | `CommonService.savePageRecordInfo` |
| Auth required | Yes |

Request body:

```json
{
  "id_page": 10,
  "id_record": 123,
  "id_user": 1,
  "content": "{\"field\":\"value\",\"createdttm\":\"2026-06-11\",\"lastupddttm\":\"2026-06-11\",\"createuserid\":1,\"lastupduserid\":1}"
}
```

Response body:

```ts
type SavePageRecordResponse = {
  status: boolean;
  id?: number | string;
  message?: string;
  [key: string]: unknown;
};
```

## User/Menu APIs

### Get User Modules

| Field | Value |
| --- | --- |
| Method | `GET` |
| URL | `/api/heroes<userid>` |
| Service | `UserService.getUserModules` |
| Auth required | Yes |

Note: there is no slash added between `heroes` and `userid` in the code.

### Get User Permissions

| Field | Value |
| --- | --- |
| Method | `GET` |
| URL | `/api/anti-heroes` |
| Service | `UserService.getUserPermissions` |
| Auth required | Yes |

### Get User Menus

| Field | Value |
| --- | --- |
| Method | `GET` |
| URL | `/api/page/menus` |
| Service | `UserService.getUserMenus` |
| Auth required | Yes |

Query parameters: dynamic `params` object.

Response model:

```ts
type UserMenu = {
  id_menu: number;
  menu_name: string;
  id_module: number;
  id_page: number;
  parent: number;
  seq_no: number;
  level: number;
  isShow: boolean;
  icon: string;
};
```

## Tools APIs

### Organization Profile

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/tools/organizationProfile` |
| Service | `ToolsService.organizationProfile` |
| Auth required | Yes |

Request body: dynamic `params` object.

### Get Module Permissions

| Field | Value |
| --- | --- |
| Method | `GET` |
| URL | `/api/tools/getmodulePermissions` |
| Service | `ToolsService.getModulePermissions` |
| Auth required | Yes |

Query parameters: dynamic `params` object.

### Store Module Permissions

| Field | Value |
| --- | --- |
| Method | `POST` |
| URL | `/api/tools/updateModulePermission` |
| Service | `ToolsService.storeModulePermissions` |
| Auth required | Yes |

Request body: dynamic `params` object.

## ERP APIs

All ERP service methods attach the authenticated JSON headers.

| Service method | Method | URL | Request location | Observed response usage |
| --- | --- | --- | --- | --- |
| `getdepreciationgridData` | `GET` | `/api/erp/getdepreciationgridData` | query params | dynamic |
| `getVendorCurrency` | `GET` | `/api/erp/vendorCurrency` | query params: `{ id_vendor }` | `response.data` |
| `getDepreciationBusunit` | `GET` | `/api/erp/getdepreciationBusunit` | query params | dynamic |
| `saveDepreciationBusunit` | `POST` | `/api/erp/saveDepreciationBusunit` | JSON body | dynamic |
| `saveStkreqitmStatus` | `GET` | `/api/erp/saveStkreqitmStatus` | query params | dynamic |
| `getItembatchDetails` | `GET` | `/api/erp/itembatchDetails` | query params | dynamic |
| `getSupplierInvoice` | `GET` | `/api/erp/getsupplierInvoice` | query params | dynamic |
| `getCustomerInvoice` | `GET` | `/api/erp/getcustomerInvoice` | query params | dynamic |
| `getItemPrice` | `GET` | `/api/erp/getitemPrice` | query params | array with price fields |
| `getpromobrandwiseItem` | `GET` | `/api/erp/getpromobrandwiseItems` | query params | dynamic |
| `getpricelistgridData` | `GET` | `/api/erp/getpricelistgridData` | query params | dynamic |
| `getItempricelistDetails` | `GET` | `/api/erp/itempricelistDetails` | query params | dynamic |
| `saveItemPricelist` | `POST` | `/api/erp/saveItemPricelist` | JSON body | dynamic |
| `savePromotionwiseitem` | `POST` | `/api/erp/savePromotionwiseitem` | JSON body | dynamic |
| `saveitemprice` | `POST` | `/api/erp/saveitemprice` | JSON body | dynamic |
| `SaveCustomerpricelist` | `POST` | `/api/erp/SaveCustomerpricelist` | JSON body | dynamic |
| `SaveCustomeritem` | `POST` | `/api/erp/SaveCustomerItem` | JSON body | dynamic |
| `getSetoffInvgridData` | `GET` | `/api/erp/getsetoffinvgridData` | query params | dynamic |
| `getStkExpirygridData` | `GET` | `/api/erp/getstkexpirygridData` | query params | dynamic |
| `getSalesDashboardData` | `GET` | `/api/erp/getsalesdashboard` | query params | dynamic |
| `getPromoItemDetails` | `GET` | `/api/erp/PromoItemDetails` | query params | dynamic |
| `getbarcode` | `GET` | `/api/erp/Getbarcodesearch` | query params | dynamic |
| `getitemBarcodeprint` | `GET` | `/api/erp/GetitemBarcodeprint` | query params | dynamic |
| `getConsreport` | `GET` | `/api/hmsexternal/getConsreportbydoctor` | query params | dynamic |

### Get Item Price

Observed request:

```json
{
  "id_busunit": 1,
  "id_site": 1,
  "type": "salesprice",
  "id_subcd": 1299,
  "id_item": 100,
  "id_unit": 1
}
```

Allowed observed `type` values:

- `salesprice`
- `invprice`
- `purprice`

Observed response body:

```ts
type ItemPriceResponse = Array<{
  item_price?: number;
  disc_per?: number;
  itemavg_cost?: number;
  retail_price?: number;
  pur_cost?: number;
  [key: string]: unknown;
}>;
```

## ERP Report APIs

| Service method | Method | URL | Request location | Response |
| --- | --- | --- | --- | --- |
| `getreportData` | `GET` | `/api/erp/getreportdata` | query params | dynamic array/object |
| `getReportMenus` | `GET` | `/api/erp/getreportmenus` | query params | dynamic |
| `getTrialBalanceData` | `GET` | `/api/erp/gettrialBalanceData` | query params | dynamic |
| `getItemstockData` | `GET` | `/api/erp/geItemstockData` | query params | dynamic |
| `getItemstockdetData` | `GET` | `/api/erp/geItemstockDetData` | query params | dynamic |

## Legacy/Currently Unused Endpoint Constants

These endpoint constants exist in `axios-config.ts` but no active service usage was found in the analyzed frontend:

| Constant | URL |
| --- | --- |
| `pageService` | `/api/page/service` |
| `reportService` | `/api/reportviewer` |
| `erp.settleInvoice` | `/api/erp/getSettleInvoice` |
| `erp.chequeHandlingDetails` | `/api/erp/getchequeHandlingDetails` |
| `portal.saveAppointment` via `PpService` | `GET /api/Apm/service` |

## Static Asset Paths

| Asset type | Path |
| --- | --- |
| Item files | `http://localhost:4255/uploads/item/` |
| Employee files | `http://localhost:4255/uploads/employee/` |
| Portal banners | `http://localhost:4255/uploads/banner/` |
| Patient files | `http://localhost:4255/uploads/patient/` |
| Department files | `http://localhost:4255/uploads/department/` |
| Category files | `http://localhost:4255/content/uploads/category/` |

## Error Handling Contract

The frontend response interceptor redirects on selected status codes:

| HTTP status | Frontend behavior |
| --- | --- |
| `401` | Redirect to `/` |
| `404` | Redirect to `/404` |
| Other rejected responses | Redirect to `/error` |

Backend APIs should return appropriate HTTP statuses because frontend routing depends on them.

## Notes And Risks

- The backend is not included, so exact database-backed response fields may be broader than shown here.
- `/api/Apm/service` uses a stringified `content` payload. Changing this to nested JSON would break current callers.
- `page/lookup` is also sent as a JSON string body in some components.
- Some UI code checks `response.status` instead of `response.data.status`; this currently means HTTP status in Axios.
- Many generic ERP/page endpoints accept dynamic `params`; their schemas depend on page definitions and are not fully discoverable from this frontend alone.
