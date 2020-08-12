class Survey {
  String id;
  String datahora_inicio;
  String datahora_fim;
  String pesquisador;
  String regiao_pesquisa;
  String regiao_moradia;
  String sexo;
  String idade;
  String escolaridade;
  String renda_familiar;
  String religiao;
  String noticias_whatsapp;
  String noticias_jornal_impresso;
  String noticias_facebook;
  String noticias_radio_capela;
  String noticias_outros;
  String noticias_nenhum;
  String noticias_nao_sabe;
  String pretende_votar;
  String nao_votaria_prefeito;
  String candidatos_cartao1_votaria_prefeito;
  String candidatos_cartao1_votaria_vice;
  String candidatos_cartao1_segunda_opcao;
  String candidatos_cartao1_nao_votaria_dario;
  String candidatos_cartao1_nao_votaria_neia;
  String candidatos_cartao1_nao_votaria_marta;
  String candidatos_cartao1_nao_votaria_edu;
  String candidatos_cartao1_nao_votaria_edson;
  String candidatos_cartao1_nao_votaria_nil;
  String candidatos_cartao1_nao_votaria_coronel;
  String candidatos_cartao1_nao_votaria_nenhum;
  String candidatos_cartao1_nao_votaria_nao_sabe;
  String candidatos_cartao2_votaria_prefeito;
  String satisfeito_opcoes_atuais;
  String novo_candidato_votaria;
  String novo_candidato_venceria;
  String profissoes_prefeito_medico;
  String profissoes_prefeito_empresario;
  String profissoes_prefeito_advogado;
  String profissoes_prefeito_engenheiro;
  String profissoes_prefeito_politico;
  String profissoes_prefeito_servidor;
  String profissoes_prefeito_operario;
  String profissoes_prefeito_outros;
  String profissoes_prefeito_nenhum;
  String profissoes_prefeito_nao_sabe;
  String candidatos_cartao3_conhece_hugo;
  String candidatos_cartao3_conhece_marcio;
  String candidatos_cartao3_conhece_joao_bellenus;
  String candidatos_cartao3_conhece_joao_dellabruna;
  String candidatos_cartao3_conhece_raul;
  String candidatos_cartao3_conhece_geraldo;
  String candidatos_cartao3_conhece_coronel;
  String candidatos_cartao3_conhece_nenhum;
  String candidatos_cartao3_conhece_nao_sabe;
  String candidatos_cartao3_votaria_prefeito_hugo;
  String candidatos_cartao3_votaria_prefeito_marcio;
  String candidatos_cartao3_votaria_prefeito_joao_bellenus;
  String candidatos_cartao3_votaria_prefeito_joao_dellabruna;
  String candidatos_cartao3_votaria_prefeito_raul;
  String candidatos_cartao3_votaria_prefeito_geraldo;
  String candidatos_cartao3_votaria_prefeito_coronel;
  String candidatos_cartao3_votaria_prefeito_nenhum;
  String candidatos_cartao3_votaria_prefeito_nao_sabe;
  String candidatos_cartao3_votaria_prefeito_branco_nulo;
  String candidatos_cartao3_nao_votaria_prefeito_hugo;
  String candidatos_cartao3_nao_votaria_prefeito_marcio;
  String candidatos_cartao3_nao_votaria_prefeito_joao_bellenus;
  String candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna;
  String candidatos_cartao3_nao_votaria_prefeito_raul;
  String candidatos_cartao3_nao_votaria_prefeito_geraldo;
  String candidatos_cartao3_nao_votaria_prefeito_coronel;
  String candidatos_cartao3_nao_votaria_prefeito_nenhum;
  String candidatos_cartao3_nao_votaria_prefeito_nao_sabe;
  String candidatos_cartao3_nao_votaria_prefeito_branco_nulo;
  String votaria_indicado_prefeito_atual;
  String votaria_indicado_milton;
  String tem_candidato_vereador;
  String regStatus;

  Survey({
    this.id = '',
    this.datahora_inicio = '',
    this.datahora_fim = '',
    this.pesquisador = '',
    this.regiao_pesquisa = '',
    this.regiao_moradia = '',
    this.sexo = '',
    this.idade = '',
    this.escolaridade = '',
    this.renda_familiar = '',
    this.religiao = '',
    this.noticias_whatsapp = '',
    this.noticias_jornal_impresso = '',
    this.noticias_facebook = '',
    this.noticias_radio_capela = '',
    this.noticias_outros = '',
    this.noticias_nenhum = '',
    this.noticias_nao_sabe = '',
    this.pretende_votar = '',
    this.nao_votaria_prefeito = '',
    this.candidatos_cartao1_votaria_prefeito = '',
    this.candidatos_cartao1_votaria_vice = '',
    this.candidatos_cartao1_segunda_opcao = '',
    this.candidatos_cartao1_nao_votaria_dario = '',
    this.candidatos_cartao1_nao_votaria_neia = '',
    this.candidatos_cartao1_nao_votaria_marta = '',
    this.candidatos_cartao1_nao_votaria_edu = '',
    this.candidatos_cartao1_nao_votaria_edson = '',
    this.candidatos_cartao1_nao_votaria_nil = '',
    this.candidatos_cartao1_nao_votaria_coronel = '',
    this.candidatos_cartao1_nao_votaria_nenhum = '',
    this.candidatos_cartao1_nao_votaria_nao_sabe = '',
    this.candidatos_cartao2_votaria_prefeito = '',
    this.satisfeito_opcoes_atuais = '',
    this.novo_candidato_votaria = '',
    this.novo_candidato_venceria = '',
    this.profissoes_prefeito_medico = '',
    this.profissoes_prefeito_empresario = '',
    this.profissoes_prefeito_advogado = '',
    this.profissoes_prefeito_engenheiro = '',
    this.profissoes_prefeito_politico = '',
    this.profissoes_prefeito_servidor = '',
    this.profissoes_prefeito_operario = '',
    this.profissoes_prefeito_outros = '',
    this.profissoes_prefeito_nenhum = '',
    this.profissoes_prefeito_nao_sabe = '',
    this.candidatos_cartao3_conhece_hugo = '',
    this.candidatos_cartao3_conhece_marcio = '',
    this.candidatos_cartao3_conhece_joao_bellenus = '',
    this.candidatos_cartao3_conhece_joao_dellabruna = '',
    this.candidatos_cartao3_conhece_raul = '',
    this.candidatos_cartao3_conhece_geraldo = '',
    this.candidatos_cartao3_conhece_coronel = '',
    this.candidatos_cartao3_conhece_nenhum = '',
    this.candidatos_cartao3_conhece_nao_sabe = '',
    this.candidatos_cartao3_votaria_prefeito_hugo = '',
    this.candidatos_cartao3_votaria_prefeito_marcio = '',
    this.candidatos_cartao3_votaria_prefeito_joao_bellenus = '',
    this.candidatos_cartao3_votaria_prefeito_joao_dellabruna = '',
    this.candidatos_cartao3_votaria_prefeito_raul = '',
    this.candidatos_cartao3_votaria_prefeito_geraldo = '',
    this.candidatos_cartao3_votaria_prefeito_coronel = '',
    this.candidatos_cartao3_votaria_prefeito_nenhum = '',
    this.candidatos_cartao3_votaria_prefeito_nao_sabe = '',
    this.candidatos_cartao3_votaria_prefeito_branco_nulo = '',
    this.candidatos_cartao3_nao_votaria_prefeito_hugo = '',
    this.candidatos_cartao3_nao_votaria_prefeito_marcio = '',
    this.candidatos_cartao3_nao_votaria_prefeito_joao_bellenus = '',
    this.candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna = '',
    this.candidatos_cartao3_nao_votaria_prefeito_raul = '',
    this.candidatos_cartao3_nao_votaria_prefeito_geraldo = '',
    this.candidatos_cartao3_nao_votaria_prefeito_coronel = '',
    this.candidatos_cartao3_nao_votaria_prefeito_nenhum = '',
    this.candidatos_cartao3_nao_votaria_prefeito_nao_sabe = '',
    this.candidatos_cartao3_nao_votaria_prefeito_branco_nulo = '',
    this.votaria_indicado_prefeito_atual = '',
    this.votaria_indicado_milton = '',
    this.tem_candidato_vereador = '',
    this.regStatus = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'datahora_inicio': datahora_inicio,
      'datahora_fim': datahora_fim,
      'pesquisador': pesquisador,
      'regiao_pesquisa': regiao_pesquisa,
      'regiao_moradia': regiao_moradia,
      'sexo': sexo,
      'idade': idade,
      'escolaridade': escolaridade,
      'renda_familiar': renda_familiar,
      'religiao': religiao,
      'noticias_whatsapp': noticias_whatsapp,
      'noticias_jornal_impresso': noticias_jornal_impresso,
      'noticias_facebook': noticias_facebook,
      'noticias_radio_capela': noticias_radio_capela,
      'noticias_outros': noticias_outros,
      'noticias_nenhum': noticias_nenhum,
      'noticias_nao_sabe': noticias_nao_sabe,
      'pretende_votar': pretende_votar,
      'nao_votaria_prefeito': nao_votaria_prefeito,
      'candidatos_cartao1_votaria_prefeito':
          candidatos_cartao1_votaria_prefeito,
      'candidatos_cartao1_votaria_vice': candidatos_cartao1_votaria_vice,
      'candidatos_cartao1_segunda_opcao': candidatos_cartao1_segunda_opcao,
      'candidatos_cartao1_nao_votaria_dario':
          candidatos_cartao1_nao_votaria_dario,
      'candidatos_cartao1_nao_votaria_neia':
          candidatos_cartao1_nao_votaria_neia,
      'candidatos_cartao1_nao_votaria_marta':
          candidatos_cartao1_nao_votaria_marta,
      'candidatos_cartao1_nao_votaria_edu': candidatos_cartao1_nao_votaria_edu,
      'candidatos_cartao1_nao_votaria_edson':
          candidatos_cartao1_nao_votaria_edson,
      'candidatos_cartao1_nao_votaria_nil': candidatos_cartao1_nao_votaria_nil,
      'candidatos_cartao1_nao_votaria_coronel':
          candidatos_cartao1_nao_votaria_coronel,
      'candidatos_cartao1_nao_votaria_nenhum':
          candidatos_cartao1_nao_votaria_nenhum,
      'candidatos_cartao1_nao_votaria_nao_sabe':
          candidatos_cartao1_nao_votaria_nao_sabe,
      'candidatos_cartao2_votaria_prefeito':
          candidatos_cartao2_votaria_prefeito,
      'satisfeito_opcoes_atuais': satisfeito_opcoes_atuais,
      'novo_candidato_votaria': novo_candidato_votaria,
      'novo_candidato_venceria': novo_candidato_venceria,
      'profissoes_prefeito_medico': profissoes_prefeito_medico,
      'profissoes_prefeito_empresario': profissoes_prefeito_empresario,
      'profissoes_prefeito_advogado': profissoes_prefeito_advogado,
      'profissoes_prefeito_engenheiro': profissoes_prefeito_engenheiro,
      'profissoes_prefeito_politico': profissoes_prefeito_politico,
      'profissoes_prefeito_servidor': profissoes_prefeito_servidor,
      'profissoes_prefeito_operario': profissoes_prefeito_operario,
      'profissoes_prefeito_outros': profissoes_prefeito_outros,
      'profissoes_prefeito_nenhum': profissoes_prefeito_nenhum,
      'profissoes_prefeito_nao_sabe': profissoes_prefeito_nao_sabe,
      'candidatos_cartao3_conhece_hugo': candidatos_cartao3_conhece_hugo,
      'candidatos_cartao3_conhece_marcio': candidatos_cartao3_conhece_marcio,
      'candidatos_cartao3_conhece_joao_bellenus':
          candidatos_cartao3_conhece_joao_bellenus,
      'candidatos_cartao3_conhece_joao_dellabruna':
          candidatos_cartao3_conhece_joao_dellabruna,
      'candidatos_cartao3_conhece_raul': candidatos_cartao3_conhece_raul,
      'candidatos_cartao3_conhece_geraldo': candidatos_cartao3_conhece_geraldo,
      'candidatos_cartao3_conhece_coronel': candidatos_cartao3_conhece_coronel,
      'candidatos_cartao3_conhece_nenhum': candidatos_cartao3_conhece_nenhum,
      'candidatos_cartao3_conhece_nao_sabe':
          candidatos_cartao3_conhece_nao_sabe,
      'candidatos_cartao3_votaria_prefeito_hugo':
          candidatos_cartao3_votaria_prefeito_hugo,
      'candidatos_cartao3_votaria_prefeito_marcio':
          candidatos_cartao3_votaria_prefeito_marcio,
      'candidatos_cartao3_votaria_prefeito_joao_bellenus':
          candidatos_cartao3_votaria_prefeito_joao_bellenus,
      'candidatos_cartao3_votaria_prefeito_joao_dellabruna':
          candidatos_cartao3_votaria_prefeito_joao_dellabruna,
      'candidatos_cartao3_votaria_prefeito_raul':
          candidatos_cartao3_votaria_prefeito_raul,
      'candidatos_cartao3_votaria_prefeito_geraldo':
          candidatos_cartao3_votaria_prefeito_geraldo,
      'candidatos_cartao3_votaria_prefeito_coronel':
          candidatos_cartao3_votaria_prefeito_coronel,
      'candidatos_cartao3_votaria_prefeito_nenhum':
          candidatos_cartao3_votaria_prefeito_nenhum,
      'candidatos_cartao3_votaria_prefeito_nao_sabe':
          candidatos_cartao3_votaria_prefeito_nao_sabe,
      'candidatos_cartao3_votaria_prefeito_branco_nulo':
          candidatos_cartao3_votaria_prefeito_branco_nulo,
      'candidatos_cartao3_nao_votaria_prefeito_hugo':
          candidatos_cartao3_nao_votaria_prefeito_hugo,
      'candidatos_cartao3_nao_votaria_prefeito_marcio':
          candidatos_cartao3_nao_votaria_prefeito_marcio,
      'candidatos_cartao3_nao_votaria_prefeito_joao_bellenus':
          candidatos_cartao3_nao_votaria_prefeito_joao_bellenus,
      'candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna':
          candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna,
      'candidatos_cartao3_nao_votaria_prefeito_raul':
          candidatos_cartao3_nao_votaria_prefeito_raul,
      'candidatos_cartao3_nao_votaria_prefeito_geraldo':
          candidatos_cartao3_nao_votaria_prefeito_geraldo,
      'candidatos_cartao3_nao_votaria_prefeito_coronel':
          candidatos_cartao3_nao_votaria_prefeito_coronel,
      'candidatos_cartao3_nao_votaria_prefeito_nenhum':
          candidatos_cartao3_nao_votaria_prefeito_nenhum,
      'candidatos_cartao3_nao_votaria_prefeito_nao_sabe':
          candidatos_cartao3_nao_votaria_prefeito_nao_sabe,
      'candidatos_cartao3_nao_votaria_prefeito_branco_nulo':
          candidatos_cartao3_nao_votaria_prefeito_branco_nulo,
      'votaria_indicado_prefeito_atual': votaria_indicado_prefeito_atual,
      'votaria_indicado_milton': votaria_indicado_milton,
      'tem_candidato_vereador': tem_candidato_vereador,
      'regStatus': regStatus
    };
  }

  Survey.fromMap(dynamic obj) {
    this.id = obj['id'];
    this.datahora_inicio = obj['datahora_inicio'];
    this.datahora_fim = obj['datahora_fim'];
    this.pesquisador = obj['pesquisador'];
    this.regiao_pesquisa = obj['regiao_pesquisa'];
    this.regiao_moradia = obj['regiao_moradia'];
    this.sexo = obj['sexo'];
    this.idade = obj['idade'];
    this.escolaridade = obj['escolaridade'];
    this.renda_familiar = obj['renda_familiar'];
    this.religiao = obj['religiao'];
    this.noticias_whatsapp = obj['noticias_whatsapp'];
    this.noticias_jornal_impresso = obj['noticias_jornal_impresso'];
    this.noticias_facebook = obj['noticias_facebook'];
    this.noticias_radio_capela = obj['noticias_radio_capela'];
    this.noticias_outros = obj['noticias_outros'];
    this.noticias_nenhum = obj['noticias_nenhum'];
    this.noticias_nao_sabe = obj['noticias_nao_sabe'];
    this.pretende_votar = obj['pretende_votar'];
    this.nao_votaria_prefeito = obj['nao_votaria_prefeito'];
    this.candidatos_cartao1_votaria_prefeito =
        obj['candidatos_cartao1_votaria_prefeito'];
    this.candidatos_cartao1_votaria_vice =
        obj['candidatos_cartao1_votaria_vice'];
    this.candidatos_cartao1_segunda_opcao =
        obj['candidatos_cartao1_segunda_opcao'];
    this.candidatos_cartao1_nao_votaria_dario =
        obj['candidatos_cartao1_nao_votaria_dario'];
    this.candidatos_cartao1_nao_votaria_neia =
        obj['candidatos_cartao1_nao_votaria_neia'];
    this.candidatos_cartao1_nao_votaria_marta =
        obj['candidatos_cartao1_nao_votaria_marta'];
    this.candidatos_cartao1_nao_votaria_edu =
        obj['candidatos_cartao1_nao_votaria_edu'];
    this.candidatos_cartao1_nao_votaria_edson =
        obj['candidatos_cartao1_nao_votaria_edson'];
    this.candidatos_cartao1_nao_votaria_nil =
        obj['candidatos_cartao1_nao_votaria_nil'];
    this.candidatos_cartao1_nao_votaria_coronel =
        obj['candidatos_cartao1_nao_votaria_coronel'];
    this.candidatos_cartao1_nao_votaria_nenhum =
        obj['candidatos_cartao1_nao_votaria_nenhum'];
    this.candidatos_cartao1_nao_votaria_nao_sabe =
        obj['candidatos_cartao1_nao_votaria_nao_sabe'];
    this.candidatos_cartao2_votaria_prefeito =
        obj['candidatos_cartao2_votaria_prefeito'];
    this.satisfeito_opcoes_atuais = obj['satisfeito_opcoes_atuais'];
    this.novo_candidato_votaria = obj['novo_candidato_votaria'];
    this.novo_candidato_venceria = obj['novo_candidato_venceria'];
    this.profissoes_prefeito_medico = obj['profissoes_prefeito_medico'];
    this.profissoes_prefeito_empresario = obj['profissoes_prefeito_empresario'];
    this.profissoes_prefeito_advogado = obj['profissoes_prefeito_advogado'];
    this.profissoes_prefeito_engenheiro = obj['profissoes_prefeito_engenheiro'];
    this.profissoes_prefeito_politico = obj['profissoes_prefeito_politico'];
    this.profissoes_prefeito_servidor = obj['profissoes_prefeito_servidor'];
    this.profissoes_prefeito_operario = obj['profissoes_prefeito_operario'];
    this.profissoes_prefeito_outros = obj['profissoes_prefeito_outros'];
    this.profissoes_prefeito_nenhum = obj['profissoes_prefeito_nenhum'];
    this.profissoes_prefeito_nao_sabe = obj['profissoes_prefeito_nao_sabe'];
    this.candidatos_cartao3_conhece_hugo =
        obj['candidatos_cartao3_conhece_hugo'];
    this.candidatos_cartao3_conhece_marcio =
        obj['candidatos_cartao3_conhece_marcio'];
    this.candidatos_cartao3_conhece_joao_bellenus =
        obj['candidatos_cartao3_conhece_joao_bellenus'];
    this.candidatos_cartao3_conhece_joao_dellabruna =
        obj['candidatos_cartao3_conhece_joao_dellabruna'];
    this.candidatos_cartao3_conhece_raul =
        obj['candidatos_cartao3_conhece_raul'];
    this.candidatos_cartao3_conhece_geraldo =
        obj['candidatos_cartao3_conhece_geraldo'];
    this.candidatos_cartao3_conhece_coronel =
        obj['candidatos_cartao3_conhece_coronel'];
    this.candidatos_cartao3_conhece_nenhum =
        obj['candidatos_cartao3_conhece_nenhum'];
    this.candidatos_cartao3_conhece_nao_sabe =
        obj['candidatos_cartao3_conhece_nao_sabe'];
    this.candidatos_cartao3_votaria_prefeito_hugo =
        obj['candidatos_cartao3_votaria_prefeito_hugo'];
    this.candidatos_cartao3_votaria_prefeito_marcio =
        obj['candidatos_cartao3_votaria_prefeito_marcio'];
    this.candidatos_cartao3_votaria_prefeito_joao_bellenus =
        obj['candidatos_cartao3_votaria_prefeito_joao_bellenus'];
    this.candidatos_cartao3_votaria_prefeito_joao_dellabruna =
        obj['candidatos_cartao3_votaria_prefeito_joao_dellabruna'];
    this.candidatos_cartao3_votaria_prefeito_raul =
        obj['candidatos_cartao3_votaria_prefeito_raul'];
    this.candidatos_cartao3_votaria_prefeito_geraldo =
        obj['candidatos_cartao3_votaria_prefeito_geraldo'];
    this.candidatos_cartao3_votaria_prefeito_coronel =
        obj['candidatos_cartao3_votaria_prefeito_coronel'];
    this.candidatos_cartao3_votaria_prefeito_nenhum =
        obj['candidatos_cartao3_votaria_prefeito_nenhum'];
    this.candidatos_cartao3_votaria_prefeito_nao_sabe =
        obj['candidatos_cartao3_votaria_prefeito_nao_sabe'];
    this.candidatos_cartao3_votaria_prefeito_branco_nulo =
        obj['candidatos_cartao3_votaria_prefeito_branco_nulo'];
    this.candidatos_cartao3_nao_votaria_prefeito_hugo =
        obj['candidatos_cartao3_nao_votaria_prefeito_hugo'];
    this.candidatos_cartao3_nao_votaria_prefeito_marcio =
        obj['candidatos_cartao3_nao_votaria_prefeito_marcio'];
    this.candidatos_cartao3_nao_votaria_prefeito_joao_bellenus =
        obj['candidatos_cartao3_nao_votaria_prefeito_joao_bellenus'];
    this.candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna =
        obj['candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna'];
    this.candidatos_cartao3_nao_votaria_prefeito_raul =
        obj['candidatos_cartao3_nao_votaria_prefeito_raul'];
    this.candidatos_cartao3_nao_votaria_prefeito_geraldo =
        obj['candidatos_cartao3_nao_votaria_prefeito_geraldo'];
    this.candidatos_cartao3_nao_votaria_prefeito_coronel =
        obj['candidatos_cartao3_nao_votaria_prefeito_coronel'];
    this.candidatos_cartao3_nao_votaria_prefeito_nenhum =
        obj['candidatos_cartao3_nao_votaria_prefeito_nenhum'];
    this.candidatos_cartao3_nao_votaria_prefeito_nao_sabe =
        obj['candidatos_cartao3_nao_votaria_prefeito_nao_sabe'];
    this.candidatos_cartao3_nao_votaria_prefeito_branco_nulo =
        obj['candidatos_cartao3_nao_votaria_prefeito_branco_nulo'];
    this.votaria_indicado_prefeito_atual =
        obj['votaria_indicado_prefeito_atual'];
    this.votaria_indicado_milton = obj['votaria_indicado_milton'];
    this.tem_candidato_vereador = obj['tem_candidato_vereador'];
    this.regStatus = obj['regStatus'];
  }
}
