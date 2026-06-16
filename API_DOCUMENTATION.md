# Patient Portal API Documentation

This documentation provides details about the API endpoints used in the Patient Portal application. The backend follows a service-oriented architecture with generic handlers that route requests based on service codes.

## 1. Base Configuration

| Item | Value |
| --- | --- |
| **Base API URL** | `http://localhost:4255/api/` |
| **Static file root** | `http://localhost:4255/` |
| **Axios instance** | `src/api/axios-config.ts` |
| **Auth storage** | `localStorage["user"]` |
| **Token Refresh** | Not implemented (Standard JWT) |

### 1.1 Common Headers

**Public JSON Request** (Login/OTP):
```http
Content-Type: application/json
```

**Authenticated JSON Request**:
```http
Authorization: Bearer <accessToken>
Content-Type: application/json
```

**Authenticated File Upload**:
```http
Authorization: Bearer <accessToken>
Content-Type: multipart/form-data
```

---

## 2. Authentication & Authorization

### 2.1 Standard Login
Authenticates a user with username and password.

- **URL:** `user/auth`
- **Method:** `POST`
- **Request Body:**
  ```json
  {
    "username": "user_name",
    "password": "password123"
  }
  ```
- **Response Structure (`UserModel`):** See Section 10.1.
- **Behavior:** Stores the entire response object in `localStorage["user"]`.

### 2.2 Patient Portal Login (Request OTP)
Sends an OTP to the provided mobile number.

- **URL:** `user/ppauth`
- **Method:** `POST`
- **Request Body:** `{"mobileNo": "1234567890"}`
- **Response:** `{ "otp": "ID_OR_OTP_STRING", "status": true }`

### 2.3 Patient Portal OTP Verification
Verifies OTP and returns an access token.

- **URL:** `user/ppauthotp`
- **Method:** `POST`
- **Request Body:** `{"mobileNo": "1234567890", "otp": "1234"}`
- **Response Structure:** Same as `UserModel`.
- **Behavior:** Stores the response in `localStorage["user"]` and sets `USER_MEMBERS` in Vuex.

### 2.4 User Registration
- **URL:** `register`
- **Method:** `POST`
- **Request Body:**
  ```json
  {
    "username": "jdoe",
    "email": "jdoe@example.com",
    "password": "password123"
  }
  ```

---

## 3. Generic Data Services (ERP Core)
These endpoints are used for dynamic page rendering and data fetching across the platform.

### 3.1 Page Search
- **URL:** `page/search` | **Method:** `POST`
- **Request Body:** `{ "id_page": 51, "search_text": "doctor", "filters": [] }`

### 3.2 Page Info
- **URL:** `page/info` | **Method:** `GET`
- **Params:** `id_page`, `id_record`

### 3.3 Page Save
- **URL:** `page/save` | **Method:** `POST`
- **Structure:** `{ "id_page": 10, "id_record": 123, "id_user": 1, "content": "JSON_STRING" }`

---

## 4. Patient Portal Specific Services (Apm Service Handler)
Most portal features use the generic `/Apm/service` endpoint with a specific `type` (Service Code).

- **URL:** `Apm/service`
- **Method:** `POST`
- **Structure:**
  ```json
  {
    "type": "SERVICE_CODE",
    "content": "JSON_STRINGIFIED_PARAMS"
  }
  ```

### 4.1 Portal Service Codes

| Code | Name | Purpose |
| --- | --- | --- |
| `PP0038` | `portalHomeDetails` | Fetch banners, doctors, and departments for Homepage |
| `PP0001` | `getDoctorList` | Fetch all available healthcare providers |
| `PP0002` | `getDoctorAvailableDate` | Get available dates for a specific doctor |
| `PP0003` | `getDoctorAvailableDateTime`| Get available time slots for a doctor/date |
| `PP0008` | `saveAppointment` | Book or confirm a new appointment |
| `PP0013` | `getDepartmentList` | Fetch list of clinical specialties |
| `PP0014` | `getfilterOptions` | Fetch filter metadata (Location/Language/Dept) |
| `PP0016` | `getVisitHistory` | Fetch patient consultation/report history |
| `PP0039` | `updateStars` | Update doctor/consultation rating |
| `HMS0089` | `cancelAppointment` | Cancel an existing appointment |

### 4.2 Save Appointment Details (`PP0008`)
- **Content Params:**
  ```json
  {
    "id": 0,
    "id_employee": "123",
    "id_busunit": "10",
    "appmnt_mode": "Online",
    "appmnt_dttm": "2023-10-28 10:00:00",
    "id_customer": 1,
    "customer_name": "John Doe",
    "age": "30",
    "gender": "Male",
    "mobile_no": "1234567890",
    "national_id": "QID123456",
    "email_id": "jdoe@example.com"
  }
  ```

---

## 5. File & Report Management

### 5.1 Upload File
- **URL:** `file/upload` | **Method:** `POST`
- **Headers:** `multipart/form-data`
- **Form Data:** `pathidentifier`, `folderidentifier`, `uploads` (Binary).

### 5.2 Download Report / PDF
- **URL:** `Apm/Report` | **Method:** `GET`
- **Params:** `id_cons`, `id_customer`, `type` (Lab/USS/XRay/Prescription)
- **Response:**
  ```json
  {
    "isSave": true,
    "pdfArray": "BASE64_ENCODED_PDF_STRING",
    "message": "Success"
  }
  ```

---

## 6. User & Menu APIs

### 6.1 Get User Modules
- **URL:** `heroes/{userid}` | **Method:** `GET`

### 6.2 Get User Menus
- **URL:** `page/menus` | **Method:** `GET`
- **Params:** `id_module`, `id_user`, `id_page`

### 6.3 Get User Permissions
- **URL:** `anti-heroes` | **Method:** `GET`

---

## 7. Static Resource Paths
Construct full URLs using `{BASE_URL}{PATH}{ID}/{FILENAME}`.

| Asset Type | Path |
| --- | --- |
| **Doctors** | `uploads/employee/` |
| **Banners** | `uploads/banner/` |
| **Departments**| `uploads/department/` |
| **Patients** | `uploads/patient/` |
| **Items** | `uploads/item/` |
| **Categories** | `content/uploads/category/` |

---

## 8. Error Handling Contract

| HTTP Status | Frontend Behavior |
| --- | --- |
| `401` | Redirect to Login (`/`) |
| `404` | Redirect to Not Found (`/404`) |
| `Other` | Redirect to Error Page (`/error`) |

---

## 9. Data Models

### 9.1 UserModel
| Field | Type | Description |
| --- | --- | --- |
| `Id` | `string` | Unique identifier |
| `Username` | `string` | Display Name |
| `accessToken` | `string` | JWT Bearer token |
| `FCM_Token` | `string` | Firebase Cloud Messaging token |
| `Members` | `UserMember[]`| Associated family members |
| `notificationcount`| `number` | Unread notifications count |

### 9.2 DoctorModel
| Field | Type | Description |
| --- | --- | --- |
| `id_employee` | `string` | Unique doctor ID |
| `dept_name` | `string` | Specialty |
| `cons_fee` | `string` | Consultation fee |
| `experience` | `string` | Years of experience |
| `availability` | `string` | (e.g., "Today") |
| `profileUrl` | `string` | Image filename |

### 9.3 AppointmentModel
| Field | Type | Description |
| --- | --- | --- |
| `Id` | `string` | Appointment identifier |
| `Appmnt_Dttm` | `string` | Scheduled timestamp |
| `customer_name`| `string` | Patient display name |
| `status` | `string` | ACTV, CONSL, INACTV, HOLD, Triage |
