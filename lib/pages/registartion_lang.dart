import 'package:flutter/material.dart';

class RegistrationLang extends StatefulWidget {
  const RegistrationLang({super.key});

  @override
  State<RegistrationLang> createState() => _RegistrationLangState();
}

class _RegistrationLangState extends State<RegistrationLang> {
  String selectedLang = '';

  void _onCitySelected(String lang) {
    setState(() {
      selectedLang = lang;
    });
  }
  List<String> langs=['Русский','Қазақша'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        minimum: const EdgeInsets.only(top:50,left: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                child: Image.asset('assets/images/arrow.png'),
              ),
            ),
            const SizedBox(height: 21),
            const SizedBox(
              width: 210,
              height: 150,
              child: Text(
                'Выберите язык',
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
                  itemCount: langs.length,
                  itemBuilder: (context, index) {
                    final lang = langs[index];
                    return ListTile(
                      title: Text(lang,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      trailing: Visibility(
                        visible: selectedLang == lang,
                        child: const Icon(Icons.check, color: Colors.green),
                      ),
                      onTap: () => _onCitySelected(lang),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) => const Divider( height: 30,thickness: 2,),
                ),
              ),
            ),
            const SizedBox(height: 54,),
            GestureDetector(
              child: ElevatedButton(
                onPressed: selectedLang.isNotEmpty ? () {
                  Navigator.pushNamed(context, 'phone_verification');
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
