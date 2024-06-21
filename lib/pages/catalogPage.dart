import 'package:flutter/cupertino.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top:70),
            child: Text(
              'Акции и \nпредложения',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 21),
            height: 600,
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 351,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => SizedBox(height: 19),
            ),
          )
        ],
      ),
    );
  }
}
