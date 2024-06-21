import 'package:ecobin/pages/homeMain.dart';
import 'package:ecobin/pages/phone_verification.dart';
import 'package:ecobin/pages/profilePage.dart';
import 'package:ecobin/pages/registartion_lang.dart';
import 'package:ecobin/pages/sms_verification.dart';
import 'package:flutter/material.dart';
import 'package:ecobin/pages/registration_city.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SFProText',
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffF5F5F5)),
      ),
      initialRoute: 'homeMain',

      routes:{
        '/':(context) => const RegistrationCity(),
        'registration_lang':(context) => const RegistrationLang(),
        'phone_verification':(context) => const PhoneVerification(),
        'sms_verification':(context)=>const SmsVerification(),
        'homeMain':(context) =>const HomeMain(),
        'profilePage':(context) => const ProfilePage(),
      }
    );
  }
}


class CitySelectionScreen extends StatefulWidget {
  const CitySelectionScreen({super.key});

  @override
  _CitySelectionScreenState createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  String selectedCity = '';

  void _onCitySelected(String city) {
    setState(() {
      selectedCity = city;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Выберите город',),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          final city = cities[index];
          return ListTile(
            title: Text(city),
            trailing: Visibility(
              visible: selectedCity == city,
              child: const Icon(Icons.check, color: Colors.green),
            ),
            onTap: () => _onCitySelected(city),
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: selectedCity.isNotEmpty ? () {} : null, // Сделать доступной
        child: const Text('Дальше'),
      ),
    );
  }
}

const List<String> cities = ['Алматы', 'Нур-Султан', 'Шымкент', 'Караганда', 'Астана'];
