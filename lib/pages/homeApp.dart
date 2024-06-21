

import 'package:ecobin/pages/homeMain.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _activPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      minimum: const EdgeInsets.only(top:41,left: 18,right:21),
      child:Container(
        child: Column(
          children: [
            const SizedBox(height: 41),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){

                },
                child: GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'profilePage');
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:8),
                          child: Image.asset('assets/images/profilePicture.png'),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          children: [
                            Text(name,
                            style: TextStyle(
                              fontSize:14,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text('500 экобонусов',
                                style: TextStyle(
                                  fontSize:10,
                                )
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/images/message.png'),
                  const SizedBox(width: 18),
                  Image.asset('assets/images/notification.png')
                ],
              )
            ],
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            height: 210,
            child: PageView.builder(
              onPageChanged: (value){
                setState(() {
                  _activPage=value;
                });
              },
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height:202,
                  width: 351,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: const Color(0xffD9D9D9),
                  ),
                );
              },
              itemCount: 8,
            ),
          ),
          const SizedBox(height: 17),
            Positioned(
              bottom: 5,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate( 8,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap:(){
                            _pageController.animateToPage(index, duration: const Duration(microseconds: 300), curve: Curves.easeIn);
                          },
                          child: CircleAvatar(
                            radius: 4,
                            backgroundColor: _activPage==index?const Color(0xff5E63DB):Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      )),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 128,
                  height: 38,
                  child: Text('Получить бонусы',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,

                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 165,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      width: 165,
                      height: 100,
                      decoration: BoxDecoration(
                        color: const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 6),
                const SizedBox(
                  width: 136,
                  height: 38,
                  child:Text('Потратить бонусы',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ) ,
                ),
                Container(
                  width: 351,
                  height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(10),
                    )
                )
              ],
            )
        ],
      ),
    )
    );
  }
}
