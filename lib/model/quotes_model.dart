import 'package:flutter/material.dart';

class QuotesModel {
  String? quotes, author, category;
  Color? color;

  QuotesModel({this.quotes, this.author, this.category,this.color});

  factory QuotesModel.fromMap(Map m1) {
    QuotesModel q1 = QuotesModel(
        author: m1['author'], category: m1['category'], quotes: m1['quotes'],color: m1['color']);
    return q1;
  }
}