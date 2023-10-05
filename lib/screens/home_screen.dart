import 'package:flutter/material.dart';
import 'package:quotes_app/model/quotes_model.dart';
import 'package:quotes_app/utils/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Global.g1.quotesList.map((e) {
      QuotesModel q1 = QuotesModel.fromMap(e);
      Global.g1.modelList.add(q1);
    }).toList();
  }

  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            " Welcome To Quotes",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: Colors.blue.shade400,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isGrid = !isGrid;
                  });
                },
                icon: Icon(isGrid ? Icons.list : Icons.grid_on),color: Colors.white,),
          ],
        ),
        body: isGrid
            ? Padding(
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: Global.g1.categoryList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 155),
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        List<QuotesModel> dataList = [];
                        Global.g1.categoryName =
                            Global.g1.categoryList[index].name;
                        for (var x in Global.g1.modelList) {
                          if (x.category ==
                              Global.g1.categoryList[index].name) {
                            dataList.add(x);
                          }
                        }
                        Navigator.pushNamed(context, "quotes",
                            arguments: dataList);
                      },
                      child: containerTile(index)),
                ),
              )
            : ListView.builder(
                itemCount: Global.g1.categoryList.length,
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      List<QuotesModel> dataList = [];
                      Global.g1.categoryName =
                          Global.g1.categoryList[index].name;
                      for (var x in Global.g1.modelList) {
                        if (x.category == Global.g1.categoryList[index].name) {
                          dataList.add(x);
                        }
                      }
                      Navigator.pushNamed(context, "quotes",
                          arguments: dataList);
                    },
                    child: containerTile(index)),
              ),
      ),
    );
  }

  Container containerTile(int index) {
    return Container(
      height: 150,
      width: 250,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Global.g1.categoryList[index].color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${Global.g1.categoryList[index].name}",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  "${Global.g1.categoryList[index].image}",
                  height: 60,
                  width: 60,
                )),
          ],
        ),
      ),
    );
  }
}
