/* 
Neste arquivo foi implementada a classe abstrata Person.

As classes abstratas são as que não permitem realizar qualquer tipo de instância. São classes feitas especialmente para serem modelos para suas classes derivadas. As classes derivadas, deverão sobrescrever os métodos para realizar a implementação dos mesmos. As classes derivadas das classes abstratas são conhecidas como classes concretas. 
Os métodos abstratos estão presentes somente em classes abstratas, e são aqueles que não possuem implementação.
 */

import 'package:myapp_object_orientation/enums/enum_lists_docs_states.dart';
import 'package:myapp_object_orientation/enums/notification_method.dart';

abstract class ModelPerson {
  String _firstName = "";
  String _phoneNumber = "";
  String _addressName = "";
  String _addressNumber = "";
  String _addressNeighbourhood = "";
  String _addressZipCode = "";
  Estados _state = Estados.Escolha;
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  ModelPerson(
      String nome,
      String telefone,
      String nomeRua,
      String numero,
      String bairro,
      String cep,
      Estados estados,
      TipoNotificacao tipoNotificacao) {
    _firstName = nome;
    _phoneNumber = telefone;
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
      "Endereço": _addressName,
      "Número": _addressNumber,
      "Bairro": _addressNeighbourhood,
      "CEP": _addressZipCode,
      "Estado": _state,
      "Notificação": _tipoNotificacao
    }.toString();
  }
}
