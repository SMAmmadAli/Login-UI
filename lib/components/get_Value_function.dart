import 'package:flutter/material.dart';
import '../pages/login_page.dart';

TextEditingController controllerUserDetail = TextEditingController();
TextEditingController controllerUserPassword = TextEditingController();
getValueofField() {
  mylist.add(controllerUserDetail.text);
  mylist.add(controllerUserPassword.text);
  print(mylist);
}
