import 'package:flutter/material.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Screens/identification.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Services/prefs.dart';
import 'package:telescope_dml_eleicoes_vinhedo/Services/survey.dart';
import 'package:telescope_dml_eleicoes_vinhedo/services/globals.dart'
    as globals;

class ProjectsScreen extends StatefulWidget {
  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  ServicesSurvey servicesSurvey = ServicesSurvey();
  Prefs prefs = Prefs();
  String countTotal = '0';
  String countNotSync = '0';

  Future<bool> getCounts() async {
    countTotal = await servicesSurvey.countCollected();
    countNotSync = await servicesSurvey.countNotSyncronized();
    return true;
  }

  Widget updateButton() {
    if (globals.isUpdated == '0') {
      return RaisedButton(
          child: Icon(Icons.sync),
          textColor: Colors.white,
          color: Colors.amber,
          onPressed: () {
            setState(() {
              _sync();
            });
          });
    } else {
      return Container(
        child: Icon(Icons.check, color: Colors.green, size: 30),
      );
    }
  }

  void _sync() {
    setState(() {
      servicesSurvey.syncronizeData();
      prefs.getUpdated();
    });
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
            child: Container(
                width: 200.0,
                height: 200.0,
                child: Center(child: CircularProgressIndicator())));
      },
    );
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pop(context); //pop dialog
    });
  }

  @override
  void initState() {
    super.initState();
    prefs.getUpdated();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Column(children: [
            Text("Projetos"),
          ]),
        ),
        body: FutureBuilder<bool>(
            future: getCounts(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());

              return GestureDetector(
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      height: 180,
                      width: double.maxFinite,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: EdgeInsets.all(7),
                          child: Stack(children: <Widget>[
                            Align(
                              alignment: Alignment.centerRight,
                              child: Stack(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'Eleições',
                                                  style:
                                                      TextStyle(fontSize: 25),
                                                ),
                                              ),
                                              Spacer(),
                                              Spacer(),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: updateButton(),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                              width: 250,
                                              child: Row(
                                                children: <Widget>[
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text(
                                                            countTotal,
                                                            style: TextStyle(
                                                                fontSize: 30,
                                                                color: Colors
                                                                    .green),
                                                          ),
                                                          Text(
                                                            'Total Coletado',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .green),
                                                          ),
                                                        ],
                                                      )),
                                                  Spacer(),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Column(
                                                        children: <Widget>[
                                                          Text(
                                                            countNotSync,
                                                            style: TextStyle(
                                                                fontSize: 30,
                                                                color: Colors
                                                                    .amber),
                                                          ),
                                                          Text(
                                                            'Não Sincronizados',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                color: Colors
                                                                    .amber),
                                                          ),
                                                        ],
                                                      )),
                                                ],
                                              ))
                                        ],
                                      ))
                                ],
                              ),
                            ),
                          ]),
                        ),
                      )),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => IdentificationScreen()));
                  });
            }));
  }
}
