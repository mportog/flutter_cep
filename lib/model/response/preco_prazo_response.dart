class PrecoPrazoResposnse {
  String version;
  String encoding;
  Servicos servicos;

  PrecoPrazoResposnse({this.version, this.encoding, this.servicos});

  PrecoPrazoResposnse.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    encoding = json['encoding'];
    servicos = json['Servicos'] != null
        ? new Servicos.fromJson(json['Servicos'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    data['encoding'] = this.encoding;
    if (this.servicos != null) {
      data['Servicos'] = this.servicos.toJson();
    }
    return data;
  }
}

class Servicos {
  CServico cServico;

  Servicos({this.cServico});

  Servicos.fromJson(Map<String, dynamic> json) {
    cServico = json['cServico'] != null
        ? new CServico.fromJson(json['cServico'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.cServico != null) {
      data['cServico'] = this.cServico.toJson();
    }
    return data;
  }
}

class CServico {
  Codigo codigo;
  Codigo valor;
  Codigo prazoEntrega;
  Codigo valorMaoPropria;
  Codigo valorAvisoRecebimento;
  Codigo valorDeclarado;
  Codigo entregaDomiciliar;
  Codigo entregaSabado;
  Codigo erro;
  Codigo valorSemAdicionais;
  Codigo obsFim;
  Codigo msgErro;

  CServico(
      {this.codigo,
      this.valor,
      this.prazoEntrega,
      this.valorMaoPropria,
      this.valorAvisoRecebimento,
      this.valorDeclarado,
      this.entregaDomiciliar,
      this.entregaSabado,
      this.erro,
      this.valorSemAdicionais,
      this.obsFim,
      this.msgErro});

  CServico.fromJson(Map<String, dynamic> json) {
    codigo =
        json['Codigo'] != null ? new Codigo.fromJson(json['Codigo']) : null;
    valor = json['Valor'] != null ? new Codigo.fromJson(json['Valor']) : null;
    prazoEntrega = json['PrazoEntrega'] != null
        ? new Codigo.fromJson(json['PrazoEntrega'])
        : null;
    valorMaoPropria = json['ValorMaoPropria'] != null
        ? new Codigo.fromJson(json['ValorMaoPropria'])
        : null;
    valorAvisoRecebimento = json['ValorAvisoRecebimento'] != null
        ? new Codigo.fromJson(json['ValorAvisoRecebimento'])
        : null;
    valorDeclarado = json['ValorDeclarado'] != null
        ? new Codigo.fromJson(json['ValorDeclarado'])
        : null;
    entregaDomiciliar = json['EntregaDomiciliar'] != null
        ? new Codigo.fromJson(json['EntregaDomiciliar'])
        : null;
    entregaSabado = json['EntregaSabado'] != null
        ? new Codigo.fromJson(json['EntregaSabado'])
        : null;
    erro = json['Erro'] != null ? new Codigo.fromJson(json['Erro']) : null;
    valorSemAdicionais = json['ValorSemAdicionais'] != null
        ? new Codigo.fromJson(json['ValorSemAdicionais'])
        : null;
    obsFim =
        json['obsFim'] != null ? new Codigo.fromJson(json['obsFim']) : null;
    msgErro =
        json['MsgErro'] != null ? new Codigo.fromJson(json['MsgErro']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.codigo != null) {
      data['Codigo'] = this.codigo.toJson();
    }
    if (this.valor != null) {
      data['Valor'] = this.valor.toJson();
    }
    if (this.prazoEntrega != null) {
      data['PrazoEntrega'] = this.prazoEntrega.toJson();
    }
    if (this.valorMaoPropria != null) {
      data['ValorMaoPropria'] = this.valorMaoPropria.toJson();
    }
    if (this.valorAvisoRecebimento != null) {
      data['ValorAvisoRecebimento'] = this.valorAvisoRecebimento.toJson();
    }
    if (this.valorDeclarado != null) {
      data['ValorDeclarado'] = this.valorDeclarado.toJson();
    }
    if (this.entregaDomiciliar != null) {
      data['EntregaDomiciliar'] = this.entregaDomiciliar.toJson();
    }
    if (this.entregaSabado != null) {
      data['EntregaSabado'] = this.entregaSabado.toJson();
    }
    if (this.erro != null) {
      data['Erro'] = this.erro.toJson();
    }
    if (this.valorSemAdicionais != null) {
      data['ValorSemAdicionais'] = this.valorSemAdicionais.toJson();
    }
    if (this.obsFim != null) {
      data['obsFim'] = this.obsFim.toJson();
    }
    if (this.msgErro != null) {
      data['MsgErro'] = this.msgErro.toJson();
    }
    return data;
  }
}

class Codigo {
  String t;

  Codigo({this.t});

  Codigo.fromJson(Map<String, dynamic> json) {
    t = json['\$t'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['\$t'] = this.t;
    return data;
  }
}
