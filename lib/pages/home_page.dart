import 'package:flutter/material.dart';
import 'package:six_app/widgets/drawer.dart';
import 'package:six_app/widgets/item_widget.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days =30;
  final  String name = "sudarshan";

  @override
  Widget build(BuildContext context) {

    final dummyList = List.generate(20, (index) =>CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",

        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount:dummyList.length,
            itemBuilder: (context,index){
              
              return ItemWidget(
              item:dummyList[index], key: null,
              );
           },
         ),
      ),
      drawer: MyDrawer(),
    );
  }
}

class CatalogModel {
  static var item;
}




