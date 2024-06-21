import 'package:flutter/material.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  int _activPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:50,left: 21,right: 20),
      child: Column(
        children: [
          const SizedBox(
            width: 192,
            height: 38,
            child: Text(
              'Отсканировать QR',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,

              ),
            ),
          ),
          const SizedBox(height: 38),
          Stack(
            children: [
              Column(
                children: [
                  Positioned(
                    bottom: 5,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                            2,
                                (index) => Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5),
                              child: InkWell(
                                onTap:(){
                                  _pageController.animateToPage(index, duration: const Duration(microseconds: 300), curve: Curves.easeIn);
                                },
                                child: Container(
                                  width: 175,
                                  height: 47,
                                  padding: const EdgeInsets.only(top:13),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: _activPage==index?const Color(0xff5E63DB):Colors.grey.withOpacity(0.4),
                                  ),
                                  child: const Text(
                                    'Для EcoBin',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),

                                ),
                              ),
                            )),
                      ),
                    ),
                  ),
                    const SizedBox(height: 26),
                  SizedBox(
                    width: double.infinity,
                    height: 300,
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
                          height:300,
                          width: 351,
                          padding: const EdgeInsets.all(20),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(30),
                            color: const Color(0xff6FD36D).withOpacity(0.15)
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 13),
                             Container(
                               width:110,
                               height: 170,
                               decoration: BoxDecoration(
                                 color: const Color(0xff5E63DB).withOpacity(0.3),
                                 borderRadius: BorderRadius.circular(5),

                               ),
                                 child: Image.asset('assets/images/barcode.png'),
                             ),
                              const SizedBox(height: 20),
                              Container(
                                child: const Text(
                                  'Чтобы забрать мусор из EcoBin, просто \n отсканируйте QR код и отправляйтесь в',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Container(
                                child: const Text(
                                'ближайшие пункты сдачи.',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff5E63DB),
                                ),
                              ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: 2,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 247,),
          Container(
            width: 351,
            height: 47,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(40),
              color: const Color(0xff5E63DB),
            ),
            child: const Padding(
              padding: EdgeInsets.only(top:12),
              child: Text(
                'Отсканировать',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white
                ),
              ),
            ),
          )
        ],

      ),
    );
  }
}
