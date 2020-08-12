import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Models/checkboxitems.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/8.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class NoticiasScreen extends StatefulWidget {
  final List<CheckBoxItems> checkItems = List<CheckBoxItems>();

  NoticiasScreen() {
    checkItems.add(
        CheckBoxItems(label: 'Whatsapp', id: 1, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Jornal Impresso', id: 2, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Facebook', id: 3, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Radio Capela', id: 4, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Outros', id: 5, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Nenhum', id: 6, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Não sabe', id: 7, checked: false, enabled: true));
  }

  @override
  _NoticiasScreenState createState() => _NoticiasScreenState();
}

class _NoticiasScreenState extends State<NoticiasScreen> {
  saveDataSurvey() {
    widget.checkItems.forEach((value) {
      switch (value.id) {
        case 1:
          if (value.checked) {
            globals.singleSurvey.noticias_whatsapp = 'X';
          }
          break;
        case 2:
          if (value.checked) {
            globals.singleSurvey.noticias_jornal_impresso = 'X';
          }
          break;
        case 3:
          if (value.checked) {
            globals.singleSurvey.noticias_facebook = 'X';
          }
          break;
        case 4:
          if (value.checked) {
            globals.singleSurvey.noticias_radio_capela = 'X';
          }
          break;
        case 5:
          if (value.checked) {
            globals.singleSurvey.noticias_outros = 'X';
          }
          break;
        case 6:
          if (value.checked) {
            globals.singleSurvey.noticias_nenhum = 'X';
          }
          break;
        case 7:
          if (value.checked) {
            globals.singleSurvey.noticias_nao_sabe = 'X';
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
          Text('7/24'),
        ])),
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Como o Sr. (a) se atualiza das notícias da cidade? (Pode ter mais de uma resposta)',
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
                                if (item.id == 6 || item.id == 7) {
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
                                  builder: (context) => PretendeScreen()));
                        }
                      },
                    ))
              ],
            )));
  }
}
