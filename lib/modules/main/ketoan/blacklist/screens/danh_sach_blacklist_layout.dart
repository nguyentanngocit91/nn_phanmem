
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:material_dialogs/dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';

class DanhSachBlacklistLayout extends StatefulWidget {
  const DanhSachBlacklistLayout({Key? key}) : super(key: const Key(pathName));

  static const String pathName = 'danh-sach-blacklist';

  @override
  State<DanhSachBlacklistLayout> createState() =>
      _DanhSachBlacklistLayoutState();
}

class _DanhSachBlacklistLayoutState extends State<DanhSachBlacklistLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Color(0xfff5f5f5),
                  border: Border.all(width: 1, color: Color(0xffdcdbdb))),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Wrap(
                      runSpacing: 0,
                      children: [
                        Text(
                          'Mã hợp đồng',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(color: Colors.white),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 8,
                    child: Wrap(
                      runSpacing: 0,
                      children: [
                        Text(
                          'Ghi chú',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(color: Colors.white),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width:10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Wrap(
                      runSpacing: 0,
                      children: [
                        Container(
                          margin:EdgeInsets.only(top:20),
                          child:TextButton(
                              onPressed: () {},
                              child: Text("Lưu thông tin",style:TextStyle(color:Colors.white),),
                              style: ButtonStyle(
                                backgroundColor:
                                MaterialStatePropertyAll(Color(0xffff9800)),


                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height:30,
            ),
            Expanded(
              child: DataTable2(
                  columnSpacing: 8,
                  horizontalMargin: 8,
                  minWidth: 600,
                  headingRowColor: MaterialStatePropertyAll(Color(0xff105a6c)),
                  headingTextStyle: TextStyle(color: Color(0xffffffff)),

                  columns: const [
                    DataColumn2(
                      label: Text('#'),
                      fixedWidth: 50

                    ),
                    DataColumn2(
                      label: Text('Mã HĐ'),
                        fixedWidth:150,

                    ),
                    DataColumn(
                      label: Text('Ghi chú'),
                    ),
                    DataColumn2(
                      label: Text('Thao tác'),
                      fixedWidth:150
                    ),

                  ],
                  rows: List<DataRow>.generate(
                      1000,
                      (index) => DataRow(cells: [
                            DataCell(Container(width:50,child:Text((index + 1).toString()),)),
                            DataCell(Text('A11220'+index.toString())),
                            DataCell(Text('28/6/2023 ký biên bản cho tặng source cho 1029023W CÔNG TY TNHH THƯƠNG MẠI SẢN XUẤT CAO NGUYÊN MỚI' )),
                            DataCell(
                              TextButton(
                                onPressed: () {

                                   showDialog<String>(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: const Text('AlertDialog Title'),
                                      content: const Text('AlertDialog description'),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: ()
                                           {
                                             print("Cancel");
                                            return Navigator.pop(context, 'Cancel');
                                           },
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: ()
                                          {
                                            print("OK");
                                            return Navigator.pop(context, 'OK');
                                          },
                                          child: const Text('OK'),
                                        ),
                                      ],
                                    ),
                                  );

                                },
                                child: Container(

                                  child: Icon(Icons.close),
                                ),
                              ),
                            ),


                          ]))),
            )
          ],
        ),
      ),
    );
  }
}


showAlertDialog(BuildContext context) {

  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text("Cancel"),
    onPressed:  () {},
  );
  Widget continueButton = TextButton(
    child: Text("Continue"),
    onPressed:  () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("AlertDialog"),
    content: Text("Would you like to continue learning how to use Flutter alerts?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
