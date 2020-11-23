import 'package:baymax/Pages/home.dart';
import 'package:baymax/Pages/main_page.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_select/smart_select.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ConfirmacionCita extends StatefulWidget {
  ConfirmacionCita({Key key}) : super(key: key);

  @override
  _ConfirmacionCita createState() => new _ConfirmacionCita();
}

class _ConfirmacionCita extends State<ConfirmacionCita>
    with TickerProviderStateMixin {
  String value = "";
  // Declare this variable
  int selectedRadioTile;
  int selectedRadio;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Confirmación cita"),
        ),
        body: ListView(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          children: [
            Text("Confirmar la cita",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Color(0xff000000))),
            Container(
              // padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 25, bottom: 25),
              child: Container(
                  // height: 80,
                  padding: EdgeInsets.only(bottom: 20, top: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffB9B6B6),
                      ),
                      color: Color(0xffB9B6B6),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            // color: Colors.green,
                            height: 70,
                            margin: EdgeInsets.only(top: 5, left: 15),
                            child: FaIcon(
                              FontAwesomeIcons.userCircle,
                              color: Color(0xFF000000),
                              size: 50,
                            ),
                          ),
                          Container(
                            height: 70,
                            margin: EdgeInsets.only(top: 10, left: 15),
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dra. Méndez - Nutricionista",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000))),
                                  Text("Hospital San Camilo",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: Color(0xff000000))),
                                  Container(
                                    width: 280,
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.solidCalendarAlt,
                                          color: Color(0xFF000000),
                                          size: 16,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text("11/11/2020",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xff000000))),
                                        ),
                                        FaIcon(
                                          FontAwesomeIcons.solidClock,
                                          color: Color(0xFF000000),
                                          size: 16,
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              left: 5, right: 5),
                                          child: Text("09:30",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xff000000))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                          height: 150,
                          padding: EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xffffffff),
                                ),
                                color: Color(0xffffffff),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: TextField(
                              maxLines: 10,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal),
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  hintText:
                                      "Escribe brevemente el motivo de tu consulta...",
                                  hintStyle: TextStyle(
                                      // backgroundColor: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black)),
                              onChanged: (text) {
                                value = text;
                              },
                            ),
                          )),
                      RadioListTile(
                        value: 1,
                        groupValue: selectedRadioTile,
                        title: Text(
                          "Cita Online",
                          style: TextStyle(
                              // backgroundColor: Colors.white,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                        },
                        activeColor: Colors.red,
                        // selected: true,
                      ),
                      RadioListTile(
                        value: 2,
                        groupValue: selectedRadioTile,
                        title: Text(
                          "Cita Presencial",
                          style: TextStyle(
                              // backgroundColor: Colors.white,
                              fontWeight: FontWeight.normal,
                              color: Colors.black),
                        ),
                        onChanged: (val) {
                          setSelectedRadioTile(val);
                        },
                        activeColor: Colors.red,
                        // selected: false,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 150,
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffffffff),
                                  ),
                                  color: Color(0xffffffff),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Center(
                                child: Text("Cancelar",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff000000))),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: 150,
                                padding: EdgeInsets.only(top: 15, bottom: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffffffff),
                                    ),
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Center(
                                  child: Text("Confirmar",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff000000))),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/home', (Route<dynamic> route) => false);
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}