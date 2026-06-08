import 'package:flutter_test/flutter_test.dart';
import 'package:patient_portal/injection_container.dart' as di;
import 'package:patient_portal/main.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await di.init();
  });

  testWidgets('shows the login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Enter your Mobile Number'), findsOneWidget);
  });
}
