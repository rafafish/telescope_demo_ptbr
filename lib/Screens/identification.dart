import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/startsurvey.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class IdentificationScreen extends StatefulWidget {
  @override
  _IdentificationScreenState createState() => _IdentificationScreenState();
}

class _IdentificationScreenState extends State<IdentificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController pesquisador = TextEditingController();
  TextEditingController regiao = TextEditingController();

  saveDataSurvey() {
    globals.singleSurvey.pesquisador = pesquisador.text;
    globals.singleSurvey.regiao_pesquisa = regiao.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'PESQUISADOR',
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
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.perm_identity),
                        labelText: 'Pesquisador',
                      ),
                      controller: pesquisador,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) => value.isEmpty
                          ? 'Digite o seu nome como pesquisador'
                          : null,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.location_city),
                        labelText: 'Região/Bairro',
                      ),
                      controller: regiao,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) => value.isEmpty
                          ? 'Digite a região que esta sendo realizada a pesquisa'
                          : null,
                    ),
                    SizedBox(
                      height: 30,
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
                            if (_formKey.currentState.validate()) {
                              saveDataSurvey();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StartScreen()));
                            }
                          },
                        ))
                  ],
                ))));
  }
}
