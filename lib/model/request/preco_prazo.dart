class PrecoPrazoRequest {
  //sem cadastro
  String nCdEmpresa = '0';

  //sem cadastro
  String sDsSenha = '0';

  //enum
  String nCdServico;

  //sem traços
  String sCepOrigem;

  //sem traços
  String sCepDestino;

  //incluindo sua embalagem. O peso deve ser informado em quilogramas. Se o formato for Envelope, o valor máximo permitido será 1 kg
  String nVlPeso;

  //enum
  String nCdFormato;

  //Comprimento da encomenda (incluindo embalagem), em centímetros.
  String nVlComprimento;

  //(incluindo embalagem), em centímetros. Se o formato for envelope, informar zero (0)
  String nVlAltura;

  //(incluindo embalagem)
  String nVlLargura;

  //(incluindo embalagem)
  String nVlDiametro;

  //enum de bool - serviço adicional mão própria.Valores possíveis: S ou N (S – Sim, N – Não)
  String sCdMaoPropria;

  //serviço adicional valor declarado. Neste campo deve ser apresentado o valor declarado desejado, em Reais
  String nVlValorDeclarado;

  //serviço adicional aviso de recebimento.Valores possíveis: S ou N (S – Sim, N – Não)
  String sCdAvisoRecebimento;
}
