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
      child: const Text('Catalog',
      style: TextStyle(
        fontSize: 40,
      ),),
    );
  }
}
