import 'package:fluttercorreios/enum/formato.dart';
import 'package:fluttercorreios/enum/servico.dart';

class Helper {
//pega o enum e retorna a label que o mesmo representa
  String servicoLabel(Servico servico) =>
      servico.toString().split('.').last.toUpperCase();

//retorna o código que o enum representa enum
  String codigoServico(Servico servico) {
    String codigo;
    switch (servico) {
      case Servico.pac:
        codigo = '04510';
        break;
      case Servico.sedex10:
        codigo = '04790';
        break;
      case Servico.sedex12:
        codigo = '04782';
        break;
      case Servico.sedexHoje:
        codigo = '04804';
        break;
      case Servico.sedex:
      default:
        codigo = '04014';
        break;
    }
    return codigo;
  }

  //retorno da label(string) que o formato é
  String formatoLabel(Formato formato) => formato.toString().split('.').last;

  //retorno do codiogo que o formato representa
  String formatoCodigo(Formato formato) => formato.index.toString();

  String possuiServico(bool servico) => servico ? 'S' : 'N';
}
