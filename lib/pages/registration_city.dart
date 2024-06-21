import 'package:flutter/material.dart';

class RegistrationCity extends StatefulWidget{
  const RegistrationCity({ super.key});
  @override
  _RegistrationCityState createState() {
    return _RegistrationCityState();
  }
}
class _RegistrationCityState extends State<RegistrationCity> {
  String selectedCity = '';

  void _onCitySelected(String city) {
    setState(() {
      selectedCity = city;
      buttonColor= const Color(0xffD9D9D9);
    });
  }
  List<String> cities=['Алматы', 'Астана','Шымкент','Қараганды','Ақтөбе','Тараз','Павлодар','Өскемен','Семей'];
  Color buttonColor=const Color(0xffD9D9D9);
  Color textColor=Colors.grey;
  bool isTapped=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        minimum: const EdgeInsets.only(top:95,left: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 210,
              height: 150,
              child: Text(
                'Выберите город',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 38,
                ),
              ),
            ),
            Container(
              height: 470,
              padding: const EdgeInsets.only(right: 10),
              child: Expanded(
                child: ListView.separated(
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      final city = cities[index];
                      return ListTile(
                        title: Text(city,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                        ),
                        trailing: Visibility(
                          visible: selectedCity == city,
                          child: const Icon(Icons.check, color: Colors.green),
                        ),
                        onTap: () => _onCitySelected(city),
                      );
                    },
                  separatorBuilder: (BuildContext context, int index) => const Divider( height: 30,thickness: 2,),
                ),
              ),
            ),
          const SizedBox(height: 54,),
            GestureDetector(
              child: ElevatedButton(
                onPressed: selectedCity.isNotEmpty ? () {
                  buttonColor=const Color(0xffD9D9D9);
                  Navigator.pushNamed(context, 'registration_lang');
                } : null,
                child: Container(
                  width: 357,
                  height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Center(
                    child: Text(
                      'Дальше',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


