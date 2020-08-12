import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Models/checkboxitems.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/6.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class RendaScreen extends StatefulWidget {
  final List<CheckBoxItems> checkItems = List<CheckBoxItems>();

  RendaScreen() {
    checkItems.add(CheckBoxItems(
        label: 'Até R\$ 1.000', id: 1, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Entre R\$ 1.001 a R\$ 4.000',
        id: 2,
        checked: false,
        enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Entre R\$ 4.001 a R\$ 8.000',
        id: 3,
        checked: false,
        enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Entre R\$ 8.001 a R\$ 12.000',
        id: 4,
        checked: false,
        enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Acima de R\$ 12.000', id: 5, checked: false, enabled: true));
  }

  @override
  _RendaScreenState createState() => _RendaScreenState();
}

class _RendaScreenState extends State<RendaScreen> {
  saveDataSurvey() {
    widget.checkItems.forEach((value) {
      if (value.checked) {
        globals.singleSurvey.renda_familiar = value.label;
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
          Text('5/24'),
        ])),
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('RENDA FIMILIAR:',
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
                                if (value) {
                                  disableCheckbox();
                                  item.checked = value;
                                  item.enabled = value;
                                } else {
                                  enableCheckbox();
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
                                  builder: (context) => ReligiaoScreen()));
                        }
                      },
                    ))
              ],
            )));
  }
}
