// import 'package:Care4U/Pages/Help/otrasContacto.dart';
import 'package:Care4U/Pages/Setting/nuevoContacto.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contacto extends StatefulWidget {
  Contacto({Key key}) : super(key: key);

  @override
  _Contacto createState() => new _Contacto();
}

class _Contacto extends State<Contacto> with TickerProviderStateMixin {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Contacto Frecuentes",
            style: TextStyle(
                color: Color(0xff0c2231),
                fontSize: 22,
                fontWeight: FontWeight.w700),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(top: 25, bottom: 25),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffffffff),
                    ),
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Expanded(
                            child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Center(
                                      child: Text("Irene Santos Martínez",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff000000))),
                                    ),
                                  ],
                                ))),
                        Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.only(left: 2, right: 2),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff5DB2E8),
                              ),
                              color: Color(0xff5DB2E8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.pen,
                                  color: Color(0xFF0C2231),
                                )),
                              ],
                            )),
                        Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xff5DB2E8),
                              ),
                              color: Color(0xff5DB2E8),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.userMinus,
                                  color: Color(0xFF0C2231),
                                )),
                              ],
                            )),
                      ],
                    )),
                    Container(
                      padding: EdgeInsets.all(20),
                      // margin: EdgeInsets.only(top: 25, bottom: 25),
                      child: Container(
                          // height: 70,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffF6F6F6),
                                  ),
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      topLeft: Radius.circular(15)),
                                ),
                                child: Text("Teléfono: 666 666 666",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff000000))),
                              ),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffF6F6F6),
                                  ),
                                  color: Color(0xffF6F6F6),
                                  // borderRadius: BorderRadius.only(
                                  //     topRight: Radius.circular(15),
                                  //     bottomRight: Radius.circular(15)),
                                ),
                                child: Text("Relación: Hija",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff000000))),
                              ),
                              Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffC5EDFC),
                                  ),
                                  color: Color(0xffC5EDFC),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text("Responsable:",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff000000))),
                                    ),
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                          // box.put(
                                          //     'movilidadreducida', isSwitched);
                                        });
                                      },
                                      inactiveTrackColor: Color(0xff0C2231),
                                      activeTrackColor: Color(0xff5DB2E8),
                                      activeColor: Color(0xff0C2231),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: InkWell(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xffC5EDFC),
                        ),
                        color: Color(0xffC5EDFC),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 4,
                            offset: Offset(0, 4), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.plus,
                          color: Color(0xFF0C2231),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text("Añadir Contacto",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000))),
                        )
                      ],
                    )),
                  ),
                  onTap: () {
                    // showDialogIfFirstLoaded(context);
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return NuevoContacto();
                        },
                      ),
                    );
                  },
                ))
          ],
        ));
  }
}
