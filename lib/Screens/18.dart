import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Models/checkboxitems.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/19.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class ProfissoesScreen extends StatefulWidget {
  final List<CheckBoxItems> checkItems = List<CheckBoxItems>();

  ProfissoesScreen() {
    checkItems.add(
        CheckBoxItems(label: 'Médico', id: 1, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Empresário', id: 2, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Advogado', id: 3, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Engenheiro', id: 4, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Político', id: 5, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Servidor Público', id: 6, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Operário', id: 7, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Outros', id: 8, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Nenhum', id: 9, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Não Sabe', id: 10, checked: false, enabled: true));
  }

  @override
  _ProfissoesScreenState createState() => _ProfissoesScreenState();
}

class _ProfissoesScreenState extends State<ProfissoesScreen> {
  saveDataSurvey() {
    widget.checkItems.forEach((value) {
      switch (value.id) {
        case 1:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_medico = 'X';
          }
          break;
        case 2:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_empresario = 'X';
          }
          break;
        case 3:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_advogado = 'X';
          }
          break;
        case 4:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_engenheiro = 'X';
          }
          break;
        case 5:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_politico = 'X';
          }
          break;
        case 6:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_servidor = 'X';
          }
          break;
        case 7:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_operario = 'X';
          }
          break;
        case 8:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_outros = 'X';
          }
          break;
        case 9:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_nenhum = 'X';
          }
          break;
        case 10:
          if (value.checked) {
            globals.singleSurvey.profissoes_prefeito_nao_sabe = 'X';
          }
          break;
      }
    });
  }

  disableCheckbox() {
    widget.checkItems.forEach((value) {
      value.checked = false;
      value.enabled = false;
    });
  }

  enableCheckbox() {
    widget.checkItems.forEach((value) {
      value.checked = false;
      value.enabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('18/24'),
        ])),
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Dentre essas profissões, quais o Sr.(a) acredita ser a mais indicada para o cargo de prefeito?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500))),
                Flexible(
                    child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: widget.checkItems.length,
                  itemBuilder: (context, index) {
                    final item = widget.checkItems[index];
                    return CheckboxListTile(
                      title: Text(item.label, style: TextStyle(fontSize: 18)),
                      dense: true,
                      key: Key(item.id.toString()),
                      value: item.checked,
                      onChanged: item.enabled
                          ? (value) {
                              setState(() {
                                if (item.id == 9 || item.id == 10) {
                                  if (value) {
                                    disableCheckbox();
                                    item.checked = value;
                                    item.enabled = value;
                                  } else {
                                    enableCheckbox();
                                  }
                                } else {
                                  item.checked = value;
                                }
                              });
                            }
                          : null,
                    );
                  },
                )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    width: 180.0,
                    height: 60.0,
                    child: RaisedButton(
                      child: Text(
                        'PRÓXIMO',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        var qtdCheck = 0;
                        widget.checkItems.forEach((element) {
                          if (element.checked == true) {
                            qtdCheck++;
                          }
                        });
                        if (qtdCheck <= 0) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              // return object of type Dialog
                              return AlertDialog(
                                title: Text("Campo requerido"),
                                content: Text("Selecione uma opção"),
                                actions: <Widget>[
                                  // usually buttons at the bottom of the dialog
                                  FlatButton(
                                    child: Text("Fechar"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          saveDataSurvey();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ConheceScreen()));
                        }
                      },
                    ))
              ],
            )));
  }
}
