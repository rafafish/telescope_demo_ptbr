import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Models/checkboxitems.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/21.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class VotariaConhecidoScreen extends StatefulWidget {
  final List<CheckBoxItems> checkItems = List<CheckBoxItems>();

  VotariaConhecidoScreen() {
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
    checkItems.add(CheckBoxItems(
        label: 'Branco ou Nulo', id: 8, checked: false, enabled: true));
    checkItems.add(
        CheckBoxItems(label: 'Nenhum', id: 9, checked: false, enabled: true));
    checkItems.add(CheckBoxItems(
        label: 'Não sabe', id: 10, checked: false, enabled: true));
  }

  @override
  _VotariaConhecidoScreenState createState() => _VotariaConhecidoScreenState();
}

class _VotariaConhecidoScreenState extends State<VotariaConhecidoScreen> {
  saveDataSurvey() {
    widget.checkItems.forEach((value) {
      switch (value.id) {
        case 1:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_votaria_prefeito_hugo = 'X';
          }
          break;
        case 2:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_votaria_prefeito_marcio =
                'X';
          }
          break;
        case 3:
          if (value.checked) {
            globals.singleSurvey
                .candidatos_cartao3_votaria_prefeito_joao_bellenus = 'X';
          }
          break;
        case 4:
          if (value.checked) {
            globals.singleSurvey
                .candidatos_cartao3_votaria_prefeito_joao_dellabruna = 'X';
          }
          break;
        case 5:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_votaria_prefeito_raul = 'X';
          }
          break;
        case 6:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_votaria_prefeito_geraldo =
                'X';
          }
          break;
        case 7:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_votaria_prefeito_coronel =
                'X';
          }
          break;
        case 8:
          if (value.checked) {
            globals.singleSurvey
                .candidatos_cartao3_votaria_prefeito_branco_nulo = 'X';
          }
          break;
        case 9:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_votaria_prefeito_nenhum =
                'X';
          }
          break;
        case 10:
          if (value.checked) {
            globals.singleSurvey.candidatos_cartao3_votaria_prefeito_nao_sabe =
                'X';
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
          Text('20/24'),
        ])),
        body: Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'Dentre esses candidatos o Sr.(a) votaria em algum para prefeito?',
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
                                  builder: (context) =>
                                      NaoVotariaConhecidoScreen()));
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
              image: AssetImage('images/imgcandidatos4.png'),
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
