import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Models/checkboxitems.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/fim.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class CandidatoVereadorScreen extends StatefulWidget {
  final List<CheckBoxItems> checkItems = List<CheckBoxItems>();

  CandidatoVereadorScreen() {
    checkItems
        .add(CheckBoxItems(label: 'SIM', id: 1, checked: false, enabled: true));
    checkItems
        .add(CheckBoxItems(label: 'NÃO', id: 2, checked: false, enabled: true));
  }
  @override
  _CandidatoVereadorScreenState createState() =>
      _CandidatoVereadorScreenState();
}

class _CandidatoVereadorScreenState extends State<CandidatoVereadorScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController vereador = TextEditingController();

  saveDataSurvey() {
    widget.checkItems.forEach((value) {
      if (value.id == 2 && value.checked) {
        globals.singleSurvey.tem_candidato_vereador = value.label;
      } else {
        globals.singleSurvey.tem_candidato_vereador = vereador.text;
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

  Widget campoQual() {
    if (widget.checkItems[0].checked) {
      return TextFormField(
          controller: vereador,
          decoration: InputDecoration(labelText: 'Qual?'),
          textCapitalization: TextCapitalization.words,
          validator: (text) {
            if (text.isEmpty)
              return 'Responda qual o candidato a vereador do entrevistado';
            else
              return null;
          });
    }
    return Text('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('24/24'),
        ])),
        body: Form(
            key: _formKey,
            child: Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('O Sr. (a) já tem candidato a vereador?',
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
                          title:
                              Text(item.label, style: TextStyle(fontSize: 18)),
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
                    campoQual(),
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
                              if (widget.checkItems[0].checked) {
                                if (_formKey.currentState.validate()) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => FinalScreen()));
                                }
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => FinalScreen()));
                              }
                            }
                          },
                        ))
                  ],
                ))));
  }
}
