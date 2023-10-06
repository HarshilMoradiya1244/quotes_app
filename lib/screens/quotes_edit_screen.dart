import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:quotes_app/utils/global.dart';

import '../model/quotes_model.dart';

class QuotesEditScreen extends StatefulWidget {
  const QuotesEditScreen({super.key});

  @override
  State<QuotesEditScreen> createState() => _QuotesEditScreenState();
}

class _QuotesEditScreenState extends State<QuotesEditScreen> {
  bool color = true;
  bool bold = true;
  bool italic = true;
  bool text = true;
  int i = 0;
  int j = 14;

  @override
  Widget build(BuildContext context) {
    QuotesModel model =
        ModalRoute.of(context)!.settings.arguments as QuotesModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "Welcome To Edit",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            backgroundColor: Colors.blue.shade400,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context, 'quotes');
              },
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
            )),
        backgroundColor: Colors.grey.shade400,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    i = (i + 1) % Global.g1.colors.length;
                  });;
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Global.g1.colors[i],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${model.quotes}",
                        textAlign: TextAlign.center,
                        style:TextStyle(
                            fontWeight:
                                bold ? FontWeight.bold : FontWeight.normal,
                            fontStyle:
                                italic ? FontStyle.italic : FontStyle.normal,
                            fontSize: 19,color: Global.g1.colors[j],
                          fontFamily:text?'satisfy':'playfairdisplay400'
                        ),
                      ),
                      SizedBox(height: 50),
                      Text(
                        "${model.author}",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.playfairDisplay(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          color:Global.g1.colors[j],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Row(
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
                              j = (j - 1) % Global.g1.colors.length;
                            });
                          },
                          icon: Icon(
                            Icons.color_lens_outlined,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              bold = !bold;
                            });
                          },
                          icon: Icon(
                            Icons.format_bold,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              italic = !italic;
                            });
                          },
                          icon: Icon(
                            Icons.format_italic,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              text = !text;
                            });
                          },
                          icon: Icon(
                            Icons.text_format,
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
