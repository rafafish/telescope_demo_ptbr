import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/2.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class RegionScreen extends StatefulWidget {
  @override
  _RegionScreenState createState() => _RegionScreenState();
}

class _RegionScreenState extends State<RegionScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController regiaoMoradia = TextEditingController();

  saveDataSurvey() {
    globals.singleSurvey.regiao_moradia = regiaoMoradia.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              '1/24',
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
                        child: Text('Qual sua região de moradia?',
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
                        icon: Icon(Icons.edit_location),
                        labelText: 'Região de Moradia',
                      ),
                      controller: regiaoMoradia,
                      textCapitalization: TextCapitalization.words,
                      validator: (value) => value.isEmpty
                          ? 'Digite a região de moradia do entrevistado'
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
                                      builder: (context) => SexoScreen()));
                            }
                          },
                        ))
                  ],
                ))));
  }
}
