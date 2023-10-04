import 'package:flutter/material.dart';
import 'package:quotes_app/model/quotes_model.dart';

class QuotesEditScreen extends StatelessWidget {
  const QuotesEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuotesModel model = ModalRoute
        .of(context)!
        .settings
        .arguments as QuotesModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Welcome To Edit"),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height *0.35,
                width: MediaQuery
                    .of(context)
                    .size
                    .width *0.90,
                color: Colors.pinkAccent,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${model.quotes}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize:19),),
                    Text("${model.author}",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontStyle:FontStyle.italic),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
