import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/1.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  saveDataSurvey() {
    var uuid = Uuid();

    globals.singleSurvey.id = '';
    globals.singleSurvey.datahora_inicio = '';
    globals.singleSurvey.datahora_fim = '';
    globals.singleSurvey.regiao_moradia = '';
    globals.singleSurvey.sexo = '';
    globals.singleSurvey.idade = '';
    globals.singleSurvey.escolaridade = '';
    globals.singleSurvey.renda_familiar = '';
    globals.singleSurvey.religiao = '';
    globals.singleSurvey.noticias_whatsapp = '';
    globals.singleSurvey.noticias_jornal_impresso = '';
    globals.singleSurvey.noticias_facebook = '';
    globals.singleSurvey.noticias_radio_capela = '';
    globals.singleSurvey.noticias_outros = '';
    globals.singleSurvey.noticias_nenhum = '';
    globals.singleSurvey.noticias_nao_sabe = '';
    globals.singleSurvey.pretende_votar = '';
    globals.singleSurvey.nao_votaria_prefeito = '';
    globals.singleSurvey.candidatos_cartao1_votaria_prefeito = '';
    globals.singleSurvey.candidatos_cartao1_votaria_vice = '';
    globals.singleSurvey.candidatos_cartao1_segunda_opcao = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_dario = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_neia = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_marta = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_edu = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_edson = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_nil = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_coronel = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_nenhum = '';
    globals.singleSurvey.candidatos_cartao1_nao_votaria_nao_sabe = '';
    globals.singleSurvey.candidatos_cartao2_votaria_prefeito = '';
    globals.singleSurvey.satisfeito_opcoes_atuais = '';
    globals.singleSurvey.novo_candidato_votaria = '';
    globals.singleSurvey.novo_candidato_venceria = '';
    globals.singleSurvey.profissoes_prefeito_medico = '';
    globals.singleSurvey.profissoes_prefeito_empresario = '';
    globals.singleSurvey.profissoes_prefeito_advogado = '';
    globals.singleSurvey.profissoes_prefeito_engenheiro = '';
    globals.singleSurvey.profissoes_prefeito_politico = '';
    globals.singleSurvey.profissoes_prefeito_servidor = '';
    globals.singleSurvey.profissoes_prefeito_operario = '';
    globals.singleSurvey.profissoes_prefeito_outros = '';
    globals.singleSurvey.profissoes_prefeito_nenhum = '';
    globals.singleSurvey.profissoes_prefeito_nao_sabe = '';
    globals.singleSurvey.candidatos_cartao3_conhece_hugo = '';
    globals.singleSurvey.candidatos_cartao3_conhece_marcio = '';
    globals.singleSurvey.candidatos_cartao3_conhece_joao_bellenus = '';
    globals.singleSurvey.candidatos_cartao3_conhece_joao_dellabruna = '';
    globals.singleSurvey.candidatos_cartao3_conhece_raul = '';
    globals.singleSurvey.candidatos_cartao3_conhece_geraldo = '';
    globals.singleSurvey.candidatos_cartao3_conhece_coronel = '';
    globals.singleSurvey.candidatos_cartao3_conhece_nenhum = '';
    globals.singleSurvey.candidatos_cartao3_conhece_nao_sabe = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_hugo = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_marcio = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_joao_bellenus = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_joao_dellabruna =
        '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_raul = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_geraldo = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_coronel = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_nenhum = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_nao_sabe = '';
    globals.singleSurvey.candidatos_cartao3_votaria_prefeito_branco_nulo = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_hugo = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_marcio = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_joao_bellenus =
        '';
    globals.singleSurvey
        .candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_raul = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_geraldo = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_coronel = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_nenhum = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_nao_sabe = '';
    globals.singleSurvey.candidatos_cartao3_nao_votaria_prefeito_branco_nulo =
        '';
    globals.singleSurvey.votaria_indicado_prefeito_atual = '';
    globals.singleSurvey.votaria_indicado_milton = '';
    globals.singleSurvey.tem_candidato_vereador = '';
    globals.singleSurvey.regStatus = '';

    globals.listSurvey = [];
    globals.singleSurvey.id = uuid.v1();
    globals.singleSurvey.datahora_inicio = DateTime.now().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('INICIAR PESQUISA'),
        ])),
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Esta é uma pesquisa sobre o momento político da cidade de Vinhedo. O Sr.(a) poderia responder algumas perguntas?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500))),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('O Sr.(a) vota em Vinhedo?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500))),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 280.0,
                    height: 60.0,
                    child: RaisedButton(
                      child: Text(
                        'SIM! INICIAR PESQUISA',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18.0),
                      ),
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        saveDataSurvey();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegionScreen()));
                      },
                    ))
              ],
            )));
  }
}
