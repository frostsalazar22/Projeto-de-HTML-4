import 'package:flutter_test/flutter_test.dart';
import 'package:circuito_rpg/core/utils/validators.dart';

void main() {
  test('Valida email correto', () {
    expect(Validators.validateEmail('frost@email.com'), null);
  });

  test('Rejeita email inválido', () {
    expect(Validators.validateEmail('frost@'), isNotNull);
  });
}
