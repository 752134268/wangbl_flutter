import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Day5 extends StatefulWidget {
  @override
  _Day5State createState() {
    return new _Day5State();
  }
}

class _Day5State extends State<Day5> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft, //全屏时旋转方向，左边
    ]);
  }

  @override
  Widget build(BuildContext context) {
    Stack _buildChild = Stack(children: [
      Image.asset(
        'images/ic_lk3f7_bg.png',

        // width: BoxFit.fitWidth,
        // height: 240.0,
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_usem1.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_usem2.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_unusem3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_unusew1.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_unusew2.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_usew3.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_unusew4.png',
        fit: BoxFit.fill,
      ),
      Image.asset(
        'images/ic_lk3f7_usew5.png',
        fit: BoxFit.fill,
      )
    ]);

    return MaterialApp(
        title: '智慧公厕导航系统',
        home: new Scaffold(
          body: Container(
            // width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height,
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      alignment: Alignment.center,
                      decoration: new BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/lk_bg.png'),
                              fit: BoxFit.cover)),
                      child: _buildChild,
                    )),
                Expanded(
                    flex: 1,
                    child: Flex(
                      direction: Axis.vertical,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.0),
                                    color: Colors.lightGreen),
                              )),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0.0),
                                      color: Colors.lightBlue),
                                ))),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
