import 'dart:convert';
import 'package:http/http.dart' as http;

/*  
  A classe ViaCEP é uma implementação do webService ViaCep.
  É um exemplo de como fazer chamada e tratar o retorno (http.get), convertendo a string de resposta para um MAP, que é melhor para trabalhar.

  A função viaCep recebe o cep que será buscado no webService. Este retorna um json com as informações a cerca do cep buscado.
*/

class ViaCep {
  Future<Map<dynamic, dynamic>> viaCep(String cep) async {
    var uri = Uri.parse("https://viacep.com.br/ws/$cep/json/");
    var retorno = await http.get(uri);
    var decodeResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;

    return decodeResponse;
  }
}
