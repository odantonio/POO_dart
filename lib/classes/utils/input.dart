import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  /* 
  Método Estático: não é necessário instanciar, podemos acessar diretamente.
     
  Implementando recuso Try-Catch para tratar possiveis erros, ao invés de usar .tryParse.
  Também implementando funções recursivas.   
     */

  static String inputText() {
    var line = stdin.readLineSync(encoding: utf8);
    return line ?? "";
  }

  static String inputWithText(String message) {
    print(message);
    return inputText();
  }

  static double? inputNumber() {
    var value = inputText();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static double? inputNumberWithText(String message) {
    print(message);
    return inputNumber();
  }

  static double? inputWithNumberValidation(String message, String validation) {
    var line = inputWithText(message);
    if (line == validation) {
      return null;
    }
    do {
      try {
        return inputNumber();
      } catch (e) {
        print(message);
      }
    } while (true);
  }
}
