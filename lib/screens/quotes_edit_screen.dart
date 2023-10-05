import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/quotes_model.dart';

class QuotesEditScreen extends StatefulWidget {
  const QuotesEditScreen({super.key});

  @override
  State<QuotesEditScreen> createState() => _QuotesEditScreenState();
}

class _QuotesEditScreenState extends State<QuotesEditScreen> {
  bool color = true;

  @override
  Widget build(BuildContext context) {
    QuotesModel model =
        ModalRoute.of(context)!.settings.arguments as QuotesModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Welcome To Edit", style: TextStyle(fontSize: 20, color: Colors.white),),
          backgroundColor: Colors.blue.shade400,
          leading:IconButton(onPressed: (){
            Navigator.pop(context,'quotes');
          }, icon: Icon(Icons.arrow_back),color: Colors.white,)
        ),
        backgroundColor: Colors.grey.shade400,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: !color ? Colors.pinkAccent : Colors.orange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${model.quotes}",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                    Text(
                      "${model.author}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )
                  ],
                ),
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  Container(
                    height:MediaQuery.of(context).size.height*0.10,
                    width:MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Colors.white),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download_outlined,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              Clipboard.setData(
                                  ClipboardData(text: "${model.quotes}"));
                            });
                          },
                          icon: Icon(
                            Icons.copy,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              color = !color;
                            });
                          },
                          icon: Icon(
                            Icons.color_lens_outlined,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.share,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
