import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Models/checkboxitems.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/20.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class ConheceScreen extends StatefulWidget {
  final List<CheckBoxItems> checkItems = List<CheckBoxItems>();

  ConheceScreen() {
    checkItems.add(CheckBoxItems(
        label: 'Hugo Col. Santanna', id: 1, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Marcio Polo Outdoor', id: 2, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'João Marcos Bellenus', id: 3, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'João Dellabruna', id: 4, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Raul Jacto', id: 5, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Geraldo do Infanger', id: 6, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Coronel Hamilton', id: 7, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Nenhum', id: 8, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Não sabe', id: 9, checked: false, enabled: true));
  }

  @override
  _ConheceScreenState createState() => _ConheceScreenState();
}

class _ConheceScreenState extends State<ConheceScreen> {
  saveDataSurvey() {
    widget.checkItems.forEach((value) {
      switch (value.id) {
        case 1:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_hugo = 'X';
          }
          break;
        case 2:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_marcio = 'X';
          }
          break;
        case 3:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_joao_bellenus = 'X';
          }
          break;
        case 4:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_joao_dellabruna =
                'X';
          }
          break;
        case 5:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_raul = 'X';
          }
          break;
        case 6:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_geraldo = 'X';
          }
          break;
        case 7:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_coronel = 'X';
          }
          break;
        case 8:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_nenhum = 'X';
          }
          break;
        case 9:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_conhece_nao_sabe = 'X';
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
          Text('19/24'),
        ])),
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Dentre esses nomes, o senhor(a) conhece algum?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500))),
                Container(
                    width: 300.0,
                    height: 40.0,
                    child: RaisedButton(
                      child: Text(
                        'MOSTRAR IMAGEM',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18.0),
                      ),
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return DetailScreen();
                        }));
                      },
                    )),
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
                                if (item.id == 8 || item.id == 9) {
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
                                  builder: (context) =>
                                      VotariaConhecidoScreen()));
                        }
                      },
                    ))
              ],
            )));
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image(
              image: AssetImage('images/imgcandidatos3.png'),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
