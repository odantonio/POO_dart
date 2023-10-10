import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:myapp_object_orientation/classes/via_cep.dart';
import 'package:test/test.dart';

import 'myapp_object_orientation_test.mocks.dart';

// Através do annotation (notação) GenerateMocks, geramos a classe intermediária criada FakeServer
// Caso houvessem mais classes a serem "mockadas", seria necessário apenas passá-las dentro do array.

// Para que seja gerado, agora ma linha de comando, execute:
//```dart run build_runner build --delete-conflicting-outputs

// -> build: executa a build e sai.
// -> --delete-conflicting-outputs: Suponha que as saídas conflitantes no pacote de usuários sejam de compilações anteriores e ignore o prompt do usuário que normalmente seria fornecido.
//```
@GenerateMocks([FakeServer])
void main() {
  // Com o mockito funcionando, fazemos o teste instanciando a classe MockFakeServer
  // E passando um valor que deverá ser usado como teste.
  //
  //Sabemos que o retorno esperado é:
  //```{
  //  cep: 01001-000,
  //  logradouro: Praça da Sé,
  //  complemento: lado ímpar,
  //   bairro: Sé,
  //  localidade: São Paulo,
  //  uf: SP,
  //  ibge: 3550308,
  //  gia: 1004,
  //  ddd: 11,
  //  siafi: 7107
  // }
  //```
  // Então passamos o map como parâmetro esperado para ver ser a classe e função viaCep está funcionando corretamente.
  //``` DART
  //  when(mockRetornoCep.viaCep("01001000")).thenAnswer((realInvocation) => Future.value(
  //```
  test('Testando a função viaCep', () async {
    MockFakeServer mockRetornoCep = MockFakeServer();
    when(mockRetornoCep.viaCep("01001000"))
        .thenAnswer((realInvocation) => Future.value({
              "cep": "01001-000",
              "logradouro": "Praça da Sé",
              "complemento": "lado ímpar",
              "bairro": "Sé",
              "localidade": "São Paulo",
              "uf": "SP",
              "ibge": "3550308",
              "gia": "1004",
              "ddd": "11",
              "siafi": "7107"
            }));
    var body = await mockRetornoCep.viaCep("01001000");
    expect(body["bairro"], equals("Sé"));
  });
}

// Para que possamos usar o Mockito é preciso criar uma classe intermediária, por isso adicionamos ao projeto o pacote build_runner.
// Abaixo a classe FakeServer estende a classe Mock e herda da classe ViaCEP para que possamos ter o retorno da ViaCEP
class FakeServer extends Mock implements ViaCEP {}
