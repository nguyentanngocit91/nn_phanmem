import 'package:flutter/material.dart';

double ndGap4() {
  return 4.0;
}

double ndGap8() {
  return 8.0;
}

double ndGap12() {
  return 12.0;
}

double ndGap16() {
  return 16.0;
}

double ndGap24() {
  return 24.0;
}

double ndGap32() {
  return 32.0;
}

double ndGap40() {
  return 40.0;
}

double ndGap48() {
  return 48.0;
}

double ndGap56() {
  return 56.0;
}

double ndGap64() {
  return 64.0;
}

Widget ndGapW4() {
  return const SizedBox(
    width: 4,
  );
}

Widget ndGapW8() {
  return const SizedBox(
    width: 8,
  );
}

Widget ndGapW12() {
  return const SizedBox(
    width: 12,
  );
}

Widget ndGapW16() {
  return const SizedBox(
    width: 16,
  );
}

Widget ndGapW24() {
  return const SizedBox(
    width: 24,
  );
}

Widget ndGapW32() {
  return const SizedBox(
    width: 32,
  );
}

Widget ndGapW40() {
  return const SizedBox(
    width: 40,
  );
}

Widget ndGapW48() {
  return const SizedBox(
    width: 48,
  );
}

Widget ndGapW56() {
  return const SizedBox(
    width: 56,
  );
}

Widget ndGapW64() {
  return const SizedBox(
    width: 64,
  );
}

Widget ndGapH4() {
  return const SizedBox(
    height: 4,
  );
}

Widget ndGapH8() {
  return const SizedBox(
    height: 8,
  );
}

Widget ndGapH12() {
  return const SizedBox(
    height: 12,
  );
}

Widget ndGapH16() {
  return const SizedBox(
    height: 16,
  );
}

Widget ndGapH24() {
  return const SizedBox(
    height: 24,
  );
}

Widget ndGapH32() {
  return const SizedBox(
    height: 32,
  );
}

Widget ndGapH40() {
  return const SizedBox(
    height: 40,
  );
}

Widget ndGapH48() {
  return const SizedBox(
    height: 48,
  );
}

Widget ndGapH56() {
  return const SizedBox(
    height: 56,
  );
}

Widget ndGapH64() {
  return const SizedBox(
    height: 64,
  );
}
Widget heading1(String string){

  return ListTile(
    title:Text(string,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color:Color(0xFFF29596a) ),),
    leading: Icon(Icons.filter_alt_rounded,color: Color(0xFFF29596a)),
  );
}
Widget textForm({required String title, required onchange}){
  return TextFormField(
    /*decoration: InputDecoration(
        hintText: title,
        contentPadding: EdgeInsets.only(top: 1.0,left:10.0,right:10.0,bottom: 1.0)
    ),*/
    onChanged: onchange,

    cursorColor: Colors.black,
    decoration: InputDecoration(
      label: Text(title),
      fillColor: Colors.white,
      filled: true,
      border: InputBorder.none,
      hoverColor: Colors.white,
      hintStyle: const TextStyle(fontSize: 15),
      contentPadding:
      const EdgeInsets.only(left: 15, bottom: 5, top: 5, right: 15),
      hintText: title,),
    style: const TextStyle(fontSize: 13),
  );
}
