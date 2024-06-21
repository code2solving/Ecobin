

import 'package:ecobin/models/volan_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RankingPage extends StatefulWidget {
  const RankingPage({super.key});

  @override
  State<RankingPage> createState() => _RankingPageState();
}

class _RankingPageState extends State<RankingPage> {
  List<VolanModel> list = [];

  void init() {
    list = VolanModel.getModel();
  }
  @override
  Widget build(BuildContext context) {
    init();
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 192,
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
              color: Color(0xff5E63DB)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text('Рейтинг',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  padding: EdgeInsets.only(left: 14),
                  width: 215,
                  height: 72,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/shapeRank.png'),
                      fit: BoxFit.fill,
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Text('Город: ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white)),
                          Text('Астана ',style: TextStyle(fontSize: 14,color: Colors.white))
                        ],
                      ),
                      Row(
                        children: [
                          Text('Лига: ',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white)),
                          Text('Новичок I ',style: TextStyle(fontSize: 14,color: Colors.white))
                        ],
                      ),
                      SizedBox(height: 7),
                      Text('Обновление через 7 дней',style: TextStyle(fontSize: 14,color: Colors.white)),
                    ],
                  ),
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
            SizedBox(height: 15),
          Container(
            padding: EdgeInsets.only(left: 21,bottom: 6),
            child: Row(
              children: [
                SizedBox(width: 30,),
                Text('Участник',
                style: TextStyle(
                  color: Color(0xff949292),
                  fontSize: 12,
                  ),
                ),
                SizedBox(width: 78,),
                Text('Волонтерские часы',
                    style: TextStyle(
                      color: Color(0xff949292),
                      fontSize: 12,
                    )),
                SizedBox(width: 50),
                Text('Место',
                    style: TextStyle(
                      color: Color(0xff949292),
                      fontSize: 12,
                    )),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: ListView.separated(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(left: 21),
                    width: 357,
                    height: 52,
                    child:  Row(
                      children: [
                        Container(
                            width:40,
                            height: 40,
                            child: Image.asset('assets/images/profileRank.png'),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:Color(0xffA3A8FF).withOpacity(0.15)
                          ),
                        ),
                        SizedBox(width: 12),
                        Container(
                          width: 110,
                          child: Text(list[index].name,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          width: 110,
                          child: Text(
                            '${list[index].hours}',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(width: 77),
                        Text(
                          index>0?(list[index-1].hours==list[index].hours?('${(index+1)}'):('${(index+2)}')):'${(index+1)}',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14
                          ),
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(height: 30,thickness: 2,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
