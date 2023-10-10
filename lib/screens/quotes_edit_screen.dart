import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:quotes_app/utils/colors.dart';
import 'package:quotes_app/utils/img_list.dart';
import 'package:share_extend/share_extend.dart';
import '../model/quotes_model.dart';
import 'dart:ui' as ui;

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
  TextAlign txtAlign = TextAlign.center;
  int colorIndex = 0, fontColor = 0;
  int image = 0, fontstyle = 0;
  bool visibale = true;
  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    QuotesModel model =
        ModalRoute.of(context)!.settings.arguments as QuotesModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade400,
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      if (colorIndex < colors.length - 1) {
                        colorIndex++;
                      } else {
                        colorIndex = 0;
                      }
                    });
                  },
                  child: RepaintBoundary(
                    key: globalKey,
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.55,
                        width: MediaQuery.of(context).size.width * 0.95,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: colors[colorIndex],
                        ),
                        child: Visibility(
                            visible: visibale,
                            child: InkWell(
                                onTap: () {
                                  setState(() {
                                    visibale = false;
                                  });
                                },
                                child: Image.asset(
                                    "assets/images/bg/${imgList[image]}",
                                    fit: BoxFit.cover)))),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableText(
                      "${model.quotes}",
                      textAlign: txtAlign,
                      style: TextStyle(
                        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
                        fontStyle: italic ? FontStyle.italic : FontStyle.normal,
                        fontSize: 19,
                        color: colors[fontColor],
                        fontFamily: fontList[fontstyle],
                      ),
                    ),
                    SizedBox(height: 50),
                    SelectableText(
                      "${model.author}",
                      textAlign: txtAlign,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontFamily: fontList[fontstyle],
                        color: colors[fontColor],
                      ),
                    )
                  ],
                ),
              ]),
              Spacer(),
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.30,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      saveImage();
                                    },
                                    icon: Icon(
                                      Icons.download_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        Clipboard.setData(ClipboardData(
                                            text: "${model.quotes}"));
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
                                        if (fontColor < colors.length - 1) {
                                          fontColor++;
                                        } else {
                                          fontColor = 0;
                                        }
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
                                    onPressed: ()async{
                                      dynamic path = await saveImage();
                                      await ShareExtend.share(path['filePath'],'img');
                                    },
                                    icon: Icon(
                                      Icons.share,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        txtAlign = TextAlign.left;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.format_align_left_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        txtAlign = TextAlign.center;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.format_align_center_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        txtAlign = TextAlign.right;
                                      });
                                    },
                                    icon: Icon(
                                      Icons.format_align_right_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: imgList.length,
                                itemExtent: 100,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                      margin: EdgeInsets.all(5),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              visibale = true;
                                              image = index;
                                            });
                                          },
                                          child: Image.asset(
                                            "assets/images/bg/${imgList[index]}",
                                            fit: BoxFit.cover,
                                          )));
                                },
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 50,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: fontList.length,
                                  itemExtent: 100,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          fontstyle = index;
                                        });
                                      },
                                      child: Text(
                                        "Hello",
                                        style: TextStyle(
                                            fontFamily: "${fontList[index]}"),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic>saveImage() async {
    RenderRepaintBoundary boundary =
        globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    var img;
    ByteData? byteData =
        await img.toByteData(formate: ui.ImageByteFormat.png);

    return await ImageGallerySaver.saveImage(byteData!.buffer.asUint8List());
  }
}
