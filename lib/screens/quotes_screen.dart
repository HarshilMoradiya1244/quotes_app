import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
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
        backgroundColor: Colors.blue.shade400,
          leading:IconButton(onPressed: (){
            Navigator.pop(context,'quotes');
          }, icon: Icon(Icons.arrow_back),color: Colors.white,)
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
            Expanded(child: Text("${q1.quotes}",style:TextStyle(fontWeight: FontWeight.w400,fontFamily:'poppins'),textAlign: TextAlign.center,)),
            Expanded(child: Text("${q1.author}",style:TextStyle(fontWeight: FontWeight.w200,fontFamily:'poppins'),)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.image_search),color: Colors.white,),
                IconButton(onPressed: (){}, icon: Icon(Icons.color_lens_outlined),color: Colors.white,),
                IconButton(onPressed: (){}, icon: Icon(Icons.copy),color: Colors.white,),
                IconButton(onPressed: (){}, icon: Icon(Icons.share),color: Colors.white,),
                LikeButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}