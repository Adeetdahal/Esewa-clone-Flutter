import 'package:flutter/cupertino.dart';

class IconModel {
  IconData icon;
  String text;

  IconModel({this.icon, this.text});

  IconModel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['text'] = this.text;
    return data;
  }
}