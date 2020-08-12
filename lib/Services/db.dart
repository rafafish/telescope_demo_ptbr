import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  Database _database;

  Future<Database> openDB() async {
    if (_database == null) {
      _database = await openDatabase(
          join(await getDatabasesPath(), 'telescope_demo_ptbr.db'),
          version: 1, onCreate: (Database db, int version) async {
        await db.execute(
            'CREATE TABLE survey(id TEXT,datahora_inicio TEXT,datahora_fim TEXT,pesquisador TEXT,regiao_pesquisa TEXT,regiao_moradia TEXT,sexo TEXT,idade TEXT,escolaridade TEXT,renda_familiar TEXT,religiao TEXT,noticias_whatsapp TEXT,noticias_jornal_impresso TEXT,noticias_facebook TEXT,noticias_radio_capela TEXT,noticias_outros TEXT,noticias_nenhum TEXT,noticias_nao_sabe TEXT,pretende_votar TEXT,nao_votaria_prefeito TEXT,candidatos_cartao1_votaria_prefeito TEXT,candidatos_cartao1_votaria_vice TEXT,candidatos_cartao1_segunda_opcao TEXT,candidatos_cartao1_nao_votaria_dario TEXT,candidatos_cartao1_nao_votaria_neia TEXT,candidatos_cartao1_nao_votaria_marta TEXT,candidatos_cartao1_nao_votaria_edu TEXT,candidatos_cartao1_nao_votaria_edson TEXT,candidatos_cartao1_nao_votaria_nil TEXT,candidatos_cartao1_nao_votaria_coronel TEXT,candidatos_cartao1_nao_votaria_nenhum TEXT,candidatos_cartao1_nao_votaria_nao_sabe TEXT,candidatos_cartao2_votaria_prefeito TEXT,satisfeito_opcoes_atuais TEXT,novo_candidato_votaria TEXT,novo_candidato_venceria TEXT,profissoes_prefeito_medico TEXT,profissoes_prefeito_empresario TEXT,profissoes_prefeito_advogado TEXT,profissoes_prefeito_engenheiro TEXT,profissoes_prefeito_politico TEXT,profissoes_prefeito_servidor TEXT,profissoes_prefeito_operario TEXT,profissoes_prefeito_outros TEXT,profissoes_prefeito_nenhum TEXT,profissoes_prefeito_nao_sabe TEXT,candidatos_cartao3_conhece_hugo TEXT,candidatos_cartao3_conhece_marcio TEXT,candidatos_cartao3_conhece_joao_bellenus TEXT,candidatos_cartao3_conhece_joao_dellabruna TEXT,candidatos_cartao3_conhece_raul TEXT,candidatos_cartao3_conhece_geraldo TEXT,candidatos_cartao3_conhece_coronel TEXT,candidatos_cartao3_conhece_nenhum TEXT,candidatos_cartao3_conhece_nao_sabe TEXT,candidatos_cartao3_votaria_prefeito_hugo TEXT,candidatos_cartao3_votaria_prefeito_marcio TEXT,candidatos_cartao3_votaria_prefeito_joao_bellenus TEXT,candidatos_cartao3_votaria_prefeito_joao_dellabruna TEXT,candidatos_cartao3_votaria_prefeito_raul TEXT,candidatos_cartao3_votaria_prefeito_geraldo TEXT,candidatos_cartao3_votaria_prefeito_coronel TEXT,candidatos_cartao3_votaria_prefeito_nenhum TEXT,candidatos_cartao3_votaria_prefeito_nao_sabe TEXT,candidatos_cartao3_votaria_prefeito_branco_nulo TEXT,candidatos_cartao3_nao_votaria_prefeito_hugo TEXT,candidatos_cartao3_nao_votaria_prefeito_marcio TEXT,candidatos_cartao3_nao_votaria_prefeito_joao_bellenus TEXT,candidatos_cartao3_nao_votaria_prefeito_joao_dellabruna TEXT,candidatos_cartao3_nao_votaria_prefeito_raul TEXT,candidatos_cartao3_nao_votaria_prefeito_geraldo TEXT,candidatos_cartao3_nao_votaria_prefeito_coronel TEXT,candidatos_cartao3_nao_votaria_prefeito_nenhum TEXT,candidatos_cartao3_nao_votaria_prefeito_nao_sabe TEXT,candidatos_cartao3_nao_votaria_prefeito_branco_nulo TEXT,votaria_indicado_prefeito_atual TEXT,votaria_indicado_milton TEXT,tem_candidato_vereador TEXT,regStatus TEXT)');
      });
      var dbpath = await getDatabasesPath();
      print(dbpath);
    }
    return _database;
  }
}
