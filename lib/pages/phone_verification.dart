
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  SnackBar snackBar = const SnackBar(
    content: Text('Неправильный номер'),
  );
  bool value=true;
  Country country=CountryParser.parseCountryCode('KZ');
  String phoneNumber = '';
  String verificationCode = '';
  final border=OutlineInputBorder(
    borderRadius: BorderRadius.circular(50),
    borderSide: const BorderSide(color: Colors.transparent),
  );
  void _sendVerificationCode() {

  }

  void _verifyCode() {

  }
  void showPicker(){
    showCountryPicker(
        context: context,
        countryListTheme: const CountryListThemeData(
          bottomSheetHeight: 600,
            backgroundColor: Colors.white,
          inputDecoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
            hintText: 'Выберите вашу страну',
            border: InputBorder.none,

          )
        ),
        onSelect: (country){
        this.country=country;
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
              TextFormField(
                  inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly],
                keyboardType: TextInputType.number,
                onFieldSubmitted: (phonenumber){

                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: border,
                  focusedBorder: border,
                  prefixIcon: GestureDetector(
                    onTap: (){
                      showPicker();
                    },
                    child: Container(
                      height: 55,
                      width: 100,
                      alignment: Alignment.center,
                      child: Text('${country.flagEmoji} + ${country.phoneCode}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  labelText: 'Номер телефона',
                ),
                onChanged: (newPhoneNumber) {
                  setState(() {
                    phoneNumber = newPhoneNumber;
                  });
                },
              ),
                const SizedBox(height: 19),
                Row(
                  children: [
                    buildSwitch(),
                    const SizedBox(
                      width: 290,
                      height: 39,
                      child: Text(
                        'Согласен на обработку персональных данных и принимаю условия соглашения'
                      ),
                    )
                  ],
                ),
            ],
          ),
      ),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
              elevation: 0,
              child: Center(
                child: GestureDetector(
                  onTap:phoneNumber.length==10?(){
                    Navigator.pushNamed(context, 'sms_verification');
                  }:(){ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Неправильный номер'),),);},
                  child: Container(
                                child: const Text('SMS',
                  style:TextStyle(
                      fontSize: 16,
                      color: Color(0xff5E63DB)
                  ),
                                )
                            ),
                ),
        ),
      ),
    );
  }
  Widget buildSwitch() => Transform.scale(
    scale: 1,
    child: Switch.adaptive(
      activeColor:  const Color(0xff5E63DB),
        value: value,
        onChanged: (value) => setState(() => this.value = value)),
  );
}
