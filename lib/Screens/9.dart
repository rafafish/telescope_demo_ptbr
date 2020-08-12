import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Models/checkboxitems.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/10.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class NaoVotariaScreen extends StatefulWidget {
  final List<CheckBoxItems> checkItems = List<CheckBoxItems>();

  NaoVotariaScreen() {
    checkItems.add(CheckBoxItems(
        label: 'Não sabe ou não respondeu',
        id: 1,
        checked: false,
        enabled: true));
  }

  @override
  _NaoVotariaScreenState createState() => _NaoVotariaScreenState();
}

class _NaoVotariaScreenState extends State<NaoVotariaScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nao_votaria = TextEditingController();
  bool enabledTextField = true;

  saveDataSurvey() {
    widget.checkItems.forEach((value) {
      if (value.checked) {
        globals.singleSurvey.nao_votaria_prefeito = value.label;
      } else {
        globals.singleSurvey.nao_votaria_prefeito = nao_votaria.text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '9/24',
            ),
          ]),
        ),
        body: Form(
            key: _formKey,
            child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                            'Em quem o Sr.(a) não votaria de jeito nenhum para Prefeito de Vinhedo na próxima eleição? (Pode ser mais de uma)',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500))),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.block),
                        labelText: 'Em quem NÃO votaria de jeito nenhum',
                      ),
                      controller: nao_votaria,
                      enabled: enabledTextField,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) => value.isEmpty
                          ? 'Digite a resposta do entrevistado'
                          : null,
                    ),
                    SizedBox(
                      height: 30,
                    ),
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
                                    item.checked = value;
                                    enabledTextField = !enabledTextField;
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
                            saveDataSurvey();
                            if (enabledTextField) {
                              if (_formKey.currentState.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CandidatoVotariaScreen()));
                              }
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CandidatoVotariaScreen()));
                            }
                          },
                        ))
                  ],
                ))));
  }
}
