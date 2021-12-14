import 'package:flutter/material.dart';

void main() {
  runApp(const OngBa());
}

int counterOngBa = 1;
int counterBoMe = 1;
int counterConCai = 1;
int counterCoChu = 1;

class OngBa extends StatefulWidget {
  const OngBa({Key? key}) : super(key: key);

  @override
  State<OngBa> createState() => _OngBaState();
}

class _OngBaState extends State<OngBa> {
  @override
  Widget build(BuildContext context) {
    print('Class OngNoi build lan thu $counterOngBa');
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    counterOngBa++;
                    print('Class OngNoi setState lan thu $counterOngBa');
                  });
                },
                child: Text('OngNoi build lan thu $counterOngBa')),
          ),
          BoMe(),
          CoChu(),
        ],
      ),
    );
  }
}

class BoMe extends StatefulWidget {
  const BoMe({Key? key}) : super(key: key);

  @override
  _BoMeState createState() => _BoMeState();
}

class _BoMeState extends State<BoMe> {
  @override
  Widget build(BuildContext context) {
    print('Class BoMe build lan thu $counterBoMe');
    return Column(children: [
      ElevatedButton(
        onPressed: () {
          setState(() {
            counterBoMe++;
            print('Class BoMe setState lan thu $counterBoMe');
          });
        },
        child: Text('BoMe build lan thu $counterBoMe'),
      ),
      ConCai(),
    ]);
  }
}

class ConCai extends StatefulWidget {
  const ConCai({Key? key}) : super(key: key);

  @override
  _ConCaiState createState() => _ConCaiState();
}

class _ConCaiState extends State<ConCai> {
  @override
  Widget build(BuildContext context) {
    print('Class ConCai build lan thu $counterConCai');
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            counterConCai++;
            print('Class ConCai setState lan thu $counterConCai');
          });
        },
        child: Text('ConCai build lan thu $counterConCai'),
      ),
    );
  }
}

class CoChu extends StatefulWidget {
  const CoChu({Key? key}) : super(key: key);

  @override
  _CoChuState createState() => _CoChuState();
}

class _CoChuState extends State<CoChu> {
  @override
  Widget build(BuildContext context) {
    print('Class CoChu build lan thu $counterCoChu');
    return Container(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            counterCoChu++;
            print('Class CoChu setState lan thu $counterCoChu');
          });
        },
        child: Text('CoChu lan thu $counterCoChu'),
      ),
    );
  }
}
