import 'package:myapp_object_orientation/enums/enum_lists_docs_states.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';

// Neste arquivo foi implementada a classe abstrata Person.
//
// As classes abstratas são as que não permitem realizar qualquer tipo de instância.
// São classes feitas especialmente para serem modelos para suas classes derivadas.
//As classes derivadas, deverão sobrescrever os métodos para realizar a implementação dos mesmos.
//As classes derivadas das classes abstratas são conhecidas como classes concretas.
// Os métodos abstratos estão presentes somente em classes abstratas, e são aqueles que não possuem implementação.
abstract class ModelPerson {
  String _firstName = "";
  String _phoneNumber = "";
  String _email = "";
  String _token = "";
  String _addressName = "";
  String _addressNumber = "";
  String _addressNeighbourhood = "";
  String _addressZipCode = "";
  Estados _state = Estados.Escolha;
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  // Alteração para tornar o parâmetro de notificação Opcional
  ModelPerson(String nome, String telefone, String email, String nomeRua,
      String numero, String bairro, String cep, Estados estados,
      {token = "", TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _firstName = nome;
    _phoneNumber = telefone;
    _email = email;
    _token = token;
    _addressName = nomeRua;
    _addressNumber = numero;
    _addressNeighbourhood = bairro;
    _addressZipCode = cep;
    _state = estados;
    _tipoNotificacao = tipoNotificacao;
  }

  void setFirstName(String name) {
    _firstName = name;
  }

  void setPhoneNumber(String phone) {
    _phoneNumber = phone;
  }

  void setEmail(String email) {
    _email = email;
  }

  void setToken(String token) {
    _token = token;
  }

  void setAddressName(String addressName) {
    _addressName = addressName;
  }

  void setAddressNumber(String addressNumber) {
    _addressNumber = addressNumber;
  }

  void setAddressNeighbourhood(String neighbourhood) {
    _addressNeighbourhood = neighbourhood;
  }

  void setAddressZipCode(String zipCode) {
    _addressZipCode = zipCode;
  }

  void setState(Estados estados) {
    _state = estados;
  }

  void setNotificationType(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  String getFirstName() {
    return _firstName;
  }

  String getPhoneNumber() {
    return _phoneNumber;
  }

  String getEmail() {
    return _email;
  }

  String getToken() {
    return _token;
  }

  String getAddressName() {
    return _addressName;
  }

  String getAddressNumber() {
    return _addressNumber;
  }

  String getAddressNeighbourhood() {
    return _addressNeighbourhood;
  }

  String getAddressZipCode() {
    return _addressZipCode;
  }

  TipoNotificacao getNotificationType() {
    return _tipoNotificacao;
  }

  Estados getState() {
    return _state;
  }

  @override
  String toString() {
    return {
      "Nome": _firstName,
      "Telefone": _phoneNumber,
      "e-mail": _email,
      "token": _token,
      "Endereço": _addressName,
      "Número": _addressNumber,
      "Bairro": _addressNeighbourhood,
      "CEP": _addressZipCode,
      "Estado": _state,
      "Notificação": _tipoNotificacao
    }.toString();
  }
}
