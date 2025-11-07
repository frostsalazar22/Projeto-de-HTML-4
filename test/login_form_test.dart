import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:circuito_rpg/core/components/login_form.dart';

void main() {
  testWidgets('Renderiza campos e botão', (WidgetTester tester) async {
    bool submitted = false;

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: LoginForm(onSubmit: (_, __) => submitted = true),
      ),
    ));

    await tester.enterText(find.byType(TextFormField).first, 'teste@email.com');
    await tester.enterText(find.byType(TextFormField).last, '123456');
    await tester.tap(find.text('Entrar'));
    await tester.pump();

    expect(submitted, true);
  });
}
