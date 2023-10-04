import 'package:flutter/material.dart';
import 'package:quotes_app/model/quotes_model.dart';
import 'package:quotes_app/utils/global.dart';


class QuoatesScreen extends StatefulWidget {
  const QuoatesScreen({super.key});

  @override
  State<QuoatesScreen> createState() => _QuoatesScreenState();
}

class _QuoatesScreenState extends State<QuoatesScreen> {
  @override
  Widget build(BuildContext context) {
    List<QuotesModel>dataList=ModalRoute.of(context)!.settings.arguments as List<QuotesModel>;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "${Global.g1.categoryName}",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Scrollbar(
        child: ListView.builder(
          itemCount:dataList.length,
          itemBuilder: (context, index) => InkWell(
              onTap: (){
                QuotesModel model=dataList[index];
                Navigator.pushNamed(context,'edit',arguments:model);
              }
              ,child: squareTile(dataList[index]))
        ),
      ),
    ));
  }

  Container squareTile( QuotesModel q1) {
    return Container(
      height: 200,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:q1.color,
      ),
      child:Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(child: Text("${q1.quotes}",style:TextStyle(fontWeight: FontWeight.bold),)),
            Expanded(child: Text("${q1.author}",style:TextStyle(fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}