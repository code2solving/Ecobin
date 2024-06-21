import 'package:ecobin/pages/homeMain.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top:49,left: 22,right: 22),
            child: Column(
                children: [
                  managerHead(),
                  const SizedBox(height: 21),
                  Container(
                    child: const Text(
                      name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    child: const Text(
                      telephone,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 33),
                  Container(
                    child: Image.asset('assets/images/profileBig.png'),
                  ),
                  const SizedBox(height: 21),
                  cloudBlock(),
                  const SizedBox(height: 12),
                  statsBlock(),
                  const SizedBox(height: 13),
                  statsOperations()
                ],
            )
          ),
    );
  }

  Container statsOperations() {
    return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text(
                        'Ваши бонусы',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      width: 351,
                      height: 51,
                      decoration: BoxDecoration(
                        color:const Color(0xff5E63DB).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:const EdgeInsets.only(left:13),
                            child: const Text(
                              'Доступно \n для обмена',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff5E63DB)
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 13),
                            child: const Text(
                              '0 Тг',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff5E63DB),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: 351,
                      height: 51,
                      decoration: BoxDecoration(
                        color:const Color(0xff75FFDE).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:const EdgeInsets.only(left:13),
                            child: const Text(
                              'За все \n время',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff6FD36D)
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(right: 13),
                            child: const Text(
                              '0 Тг',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff6FD36D),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  const SizedBox(height: 22),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        padding: const EdgeInsets.only(top:9),
                        width: 351,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xff5E63DB),
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: const Text('Мои купоны',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 11),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        padding: const EdgeInsets.only(top:9),
                        width: 351,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: const Color(0xff5E63DB))
                        ),
                        child: const Text('История операций',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5E63DB),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 42),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        child: const Text(
                          'Выход',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xff5E63DB),
                          ),
                        )
                      ),
                    )
                  ],
                ),
              );
  }

  Row statsBlock() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 170,
                    height: 79,
                  decoration: BoxDecoration(
                    color:const Color(0xff5E63DB).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(10),
                  ),
                    padding: const EdgeInsets.only(top:10, left: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/send.png'),
                        Container(
                          child: const Text(
                            '0 г',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            'Макалатуры',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: Color(0xff5E63DB),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 79,
                    decoration: BoxDecoration(
                      color:const Color(0xff5E63DB).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(top:10, left: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/filter.png'),
                        Container(
                          child: const Text(
                            '0',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            'Бутылок',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: Color(0xff5E63DB),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              );
  }

  Container cloudBlock() {
    return Container(
                width: 351,
                height: 75,
                padding: const EdgeInsets.only(left:15,top: 9),

                decoration: BoxDecoration(
                  color:const Color(0xff5E63DB).withOpacity(0.15),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 24),
                          child: Image.asset('assets/images/cloud.png'),
                        )),
                    const SizedBox(width: 12),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            '0 кг',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            'CO2 выбросов сокращено',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: Color(0xff5E63DB),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
  }

  Row managerHead() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/images/arrow.png')),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Image.asset('assets/images/pen.png'),
                )
              ],
              );
  }
}
