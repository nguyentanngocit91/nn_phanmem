part of '../../screen/them_hopdong_moi.dart';

class FormThongTinKhachHangWidget extends ConsumerStatefulWidget {
  const FormThongTinKhachHangWidget({super.key,required this.id});
  final String id;
  @override
  ConsumerState createState() => _FormThongTinKhachHangWidgetState();
}

class _FormThongTinKhachHangWidgetState
    extends ConsumerState<FormThongTinKhachHangWidget> with FormUIMixins {
  final Debouncer onSearchDebouncer =
      Debouncer(delay: const Duration(seconds: 2));

  final String _typeData = 'khachhang';
  final TextEditingController _emailController = TextEditingController();

  bool isLoading = true;
  Map<String, TextEditingController> listController = {};
  String typeKH='ca-nhan';
  Map<String, FocusNode> listFocusNode = {};
  CustomerUpdateModel? data;

  void initState() {
    // TODO: implement initState
    super.initState();
    ['makhachhang', 'email', 'email_phu', 'hoten', 'phone', 'congty', 'nguoidaidienmoi', 'dienthoaicoquan', 'masothue', 'cccd', 'diachi', 'ghichu'].forEach((item) {
      listController[item] = TextEditingController();
      listFocusNode[item] = FocusNode();
    });

    Future.delayed(Duration.zero, () async {
      print("${widget.id}+widget.id");

      await ref.read(formKhachHangMoiProvider.notifier).getInfoCustomerById(widget.id.toString());
      await ref.read(kiemTraKhachHangProvider.notifier).kiemTraThongTinKhachHang(id: widget.id.toString());
      var res = ref.watch(formKhachHangMoiProvider.notifier);
      data = res.state.customer;

      typeKH = data!.type!;
      print("${data?.makhachhang!.toString()}+makhachhang");

      listController!['makhachhang']!.text = data!.makhachhang!.toString();
      listController!['email']!.text = data!.email!.toString();
      listController!['email_phu']!.text = data!.info!.emailPhu.toString();
      listController!['hoten']!.text = data!.hoten.toString();
      listController!['phone']!.text = data!.phone.toString();


      listController!['congty']!.text = data!.congty!;
      listController!['nguoidaidienmoi']!.text = data!.info!.nguoidaidienmoi.toString();
      listController!['dienthoaicoquan']!.text = data!.info!.dienthoaicoquan.toString();

      listController!['masothue']!.text = data!.masothue.toString();
      listController!['cccd']!.text = data!.cccd.toString();
      listController!['diachi']!.text = data!.diachi.toString();
      listController!['ghichu']!.text = data!.ghichu.toString();
    });
  }



  @override
  Widget build(BuildContext context) {
   ref.watch(formKhachHangMoiProvider.select((value) => value.maKhachHang  ));
   /* Map thongTinKhachHang = {};
    thongTinKhachHang =
        ref.watch(kiemTraKhachHangProvider.select((value) => value.data ?? {}));
    */
    ref.listen(kiemTraKhachHangProvider.select((value) => value.loading),
        (previous, next) {
      if (next == true) {
        Loading(context).start();
      } else {
        Future.delayed(const Duration(seconds: 1), () {
          Loading(context).stop();
        });
      }
    });


    return Wrap(
      runSpacing: 25,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm(
                    'Email khách hàng',
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: 'Không bỏ trống.'),
                      FormBuilderValidators.email(
                          errorText: 'Email không đúng định dạng.')
                    ]),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['email'],
                    focusNode: listFocusNode['email'],
                    /*onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'email', value: value, type: _typeData);
                      if (value.isEmail()) {
                        onSearchDebouncer.debounce(
                          () {
                            ref
                                .read(kiemTraKhachHangProvider.notifier)
                                .kiemTraThongTinKhachHang(email: value);
                          },
                        );
                      }
                    },*/
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Mã khách hàng'),
                  TextFormField(
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                   controller: listController['makhachhang'],
                    focusNode: listFocusNode['makhachhang'],
                   //controller: TextEditingController(text: data?.makhachhang.toString()?? maKhachHang),
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Tên khách hàng'),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                   // readOnly: thongTinKhachHang['hoten'] != null ? true : false,
                    //controller: TextEditingController(text: (thongTinKhachHang.isNotEmpty) ? thongTinKhachHang['hoten'] : ''),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['hoten'],
                    focusNode: listFocusNode['hoten'],

                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'hoten', value: value, type: _typeData);
                    },
                    /*validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: 'Không bỏ trống.'),
                    ]),*/
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Điện thoại di động'),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                   // readOnly: thongTinKhachHang['phone'] != null ? true : false,
                   // controller: TextEditingController(text: thongTinKhachHang['phone']),

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['phone'],
                    focusNode: listFocusNode['phone'],

                   /* validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: 'Không bỏ trống.'),
                    ]),*/
                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'phone', value: value, type: _typeData);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Wrap(
                children: [
                  lableTextForm('Email khách hàng (email phụ)'),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    //readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                    //controller: TextEditingController(text: thongTinKhachHang['info']?['email_phu']),

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['email_phu'],
                    focusNode: listFocusNode['email_phu'],

                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'info',
                          value: {"email_phu": value},
                          type: _typeData);
                    },
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              flex: 1,
              child: Wrap(
                children: [
                  lableTextForm('Loại Khách hàng'),
                  DropdownButtonFormField(
                    //value: thongTinKhachHang['type'] ?? 'ca-nhan',
                    value: typeKH,

                    onChanged: null,
                   enableFeedback:false,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'ca-nhan',
                        enabled: false,
                        child: Text('Cá Nhân'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'cong-ty',
                        enabled: false,
                        child: Text('Công Ty'),
                      ),
                    ],
                  /*  onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'type', value: value, type: _typeData);
                    },*/
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              flex: 2,
              child: Wrap(
                children: [
                  lableTextForm('Tên Công ty /  Cá Nhân'),
                  TextFormField(
                  //  readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                   // controller: TextEditingController(text: thongTinKhachHang['congty']),

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['congty'],
                    focusNode: listFocusNode['congty'],

                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'congty', value: value, type: _typeData);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Người đại diện mới'),
                  TextFormField(
                    //readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                    //controller: TextEditingController(text: thongTinKhachHang['info']?['nguoidaidienmoi']),

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['nguoidaidienmoi'],
                    focusNode: listFocusNode['nguoidaidienmoi'],

                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'info',
                          value: {"nguoidaidienmoi": value},
                          type: _typeData);
                    },
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Điện thoại cơ quan'),
                  TextFormField(
                    //readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                   // controller: TextEditingController(text: thongTinKhachHang['info']?['dienthoaicoquan']),

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['dienthoaicoquan'],
                    focusNode: listFocusNode['dienthoaicoquan'],

                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'info',
                          value: {"dienthoaicoquan": value},
                          type: _typeData);
                    },
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Mã số thuế'),
                  TextFormField(
                    //readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                    //controller: TextEditingController(text: thongTinKhachHang['masothue']),


                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['masothue'],
                    focusNode: listFocusNode['masothue'],

                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'masothue', value: value, type: _typeData);
                    },
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('CCCD / CMND'),
                  TextFormField(

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['cccd'],
                    focusNode: listFocusNode['cccd'],

                    //readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                   // controller: TextEditingController(text: thongTinKhachHang['cccd']),
                    //onChanged: (value) {ref.read(formKhachHangMoiProvider.notifier).changeData(key: 'cccd', value: value, type: _typeData);},
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Địa chỉ'),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                   // controller: TextEditingController(text: thongTinKhachHang['diachi']),
                    //readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['diachi'],
                    focusNode: listFocusNode['diachi'],
                    minLines: 3,
                    maxLines: 3,
                   /* validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(
                          errorText: 'Không bỏ trống.'),
                    ]),*/
                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'diachi', value: value, type: _typeData);
                    },
                  ),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Ghi chú'),
                  TextFormField(
                  //  readOnly: thongTinKhachHang.isNotEmpty ? true : false,
                    //controller: TextEditingController(text: thongTinKhachHang['ghichu']),

                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.black12,
                    ),
                    readOnly: true,
                    controller: listController['ghichu'],
                    focusNode: listFocusNode['ghichu'],

                    minLines: 3,
                    maxLines: 3,
                    onChanged: (value) {
                      ref.read(formKhachHangMoiProvider.notifier).changeData(
                          key: 'ghichu',
                          value: value,
                          type: _typeData);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }

  @override
  dispose() {
    super.dispose();
    _emailController.dispose();

     ref.invalidate(kiemTraKhachHangProvider);
  }
}