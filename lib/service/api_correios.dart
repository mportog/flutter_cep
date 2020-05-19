import 'dart:convert';

import 'package:fluttercorreios/model/response/cep.dart';
import 'package:fluttercorreios/model/response/preco_prazo_response.dart';
import 'package:xml2json/xml2json.dart';
import 'package:http/http.dart' as http;

class ApiCorreios {
  Xml2Json xml2json = new Xml2Json();
  getXmlData() async {
    try {
      String url =
          'http://ws.correios.com.br/calculador/CalcPrecoPrazo.aspx?nCdEmpresa=08082650&sDsSenha=564321&sCepOrigem=70002900&sCepDestino=09210200&nVlPeso=1&nCdFormato=1&nVlComprimento=20&nVlAltura=20&nVlLargura=20&sCdMaoPropria=n&nVlValorDeclarado=0&sCdAvisoRecebimento=n&nCdServico=04510&nVlDiametro=0&StrRetorno=xml&nIndicaCalculo=3';
      http.Response response = await http.get(url);
      xml2json.parse(response.body);
      var jsonData = xml2json.toGData();
      var data = json.decode(jsonData);
      PrecoPrazoResposnse resposta = PrecoPrazoResposnse.fromJson(data);
      return resposta;
    } catch (e) {
      print('erro ao conveter xml $e');
    }
  }

  getJsonData(String endereco) async {
    try {
      String url = 'https://viacep.com.br/ws/$endereco/json/';
      http.Response response = await http.get(url);
      //if(response.statusCode ==200)
      return json.decode(response.body);
      //var resposta = CepResponse.fromJson(jsonData);
      // for (var response in jsonData)
      //   cepList.add(CepResponse.fromJson(response));
      //print('resposta: ${cepList.length}');
      // return resposta;
    } catch (e) {
      print('erro ao conveter xml $e');
    }
  }
}
