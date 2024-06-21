
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmsVerification extends StatefulWidget {
  const SmsVerification({super.key});

  @override
  State<SmsVerification> createState() => _SmsVerificationState();
}

class _SmsVerificationState extends State<SmsVerification> {
  int start = 60;
  void startTimer(){
    const onsec = Duration(seconds: 1);
    Timer timer=Timer.periodic( onsec ,(timer) {
      if(start==0){
        setState(() {
          timer.cancel();
        });
      }
      else{
        setState(() {
          start--;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        right: true,
        left: true,
        minimum: const EdgeInsets.all(21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                  padding: const EdgeInsets.only(top:49),
                  child: Image.asset('assets/images/arrow.png')),
            ),
            const SizedBox(height: 21),
            const SizedBox(
              width: 348,
              height: 96,
              child: Text(
                'Сохраняй природу вместе с нами',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                )
                ,),
            ),
            const SizedBox(
              width: 345,
              height: 88,
              child: Text('Сдавай бутылки, банки и стекла на переработку в специальные боксы EcoBin, получай экобонусы и обменивай их на товары и скидки от любимых брендов!',
                style: TextStyle(
                    fontSize: 16
                ),
              ),
            ),
        const SizedBox(height: 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                oneDigitField(),
                oneDigitField(),
                oneDigitField(),
                oneDigitField(),
                oneDigitField(),
                Container(
                  height: 60,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {
                      if(value.length==1){
                        Navigator.pushNamed(context, 'homeMain');
                      }
                    },
                    style: Theme.of(context).textTheme.titleLarge,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 29),
            Center(
              child: RichText(text: TextSpan(
                children: [
                  const TextSpan(text: "Повторно отправить СМС можно будет через  ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black)),
                  TextSpan(text: "\n                                  $start секунд",
                      style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xff5E63DB)))
                ]
              )),
            )
          ],
        ),
      ),
    );
  }

  Container oneDigitField(){
    return Container(
      height: 60,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        onChanged: (value) {
          if(value.length==1){
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.titleLarge,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
