part of '../sua_phieu_thu_layout.dart';

class FormThongTinWebsiteWidget extends ConsumerStatefulWidget {
  const FormThongTinWebsiteWidget({super.key});

  @override
  ConsumerState createState() => _FormThongTinWebsiteWidgetState();
}

class _FormThongTinWebsiteWidgetState
    extends ConsumerState<FormThongTinWebsiteWidget> with FormUIMixins {
  
  final String _typeData = 'website';
  DateTime ngayDangKy = DateTime.now();
  DateTime? ngayBanGiao;

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(formPhieuThuProvider);

    ngayDangKy = formState.dataWebsite?['ngaykyhd'] ?? DateTime.now();
    ngayBanGiao = formState.dataWebsite?['ngaybangiao'];

    return Visibility(
      visible: formState.isHopDongWebsite,
      child: Column(
        children: [
          ndGapH40(),
          titleForm(context, title: 'Thông tin Website'),
          bodyForm(
            child: Wrap(
              runSpacing: 25,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        children: [
                          lableTextForm('Mã hợp đồng'),
                          TextFormField(
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Colors.black12,
                            ),
                            readOnly: true,
                            controller: TextEditingController(text: '${formState.soHopDong}W'),
                          ),
                        ],
                      ),
                    ),
                    ndGapW16(),
                    Expanded(
                      flex: 2,
                      child: Wrap(
                        children: [
                          lableTextForm('Chức năng'),
                          TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            initialValue: formState.dataWebsite?['chucnang'],
                            onChanged: (value) {
                              ref
                                  .read(formPhieuThuProvider.notifier)
                                  .changeData(type: _typeData ,key: 'chucnang', value: value);
                            },
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: 'Không bỏ trống.'),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    ndGapW16(),
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        children: [
                          lableTextForm('Tổng giá trị Website'),
                          TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            initialValue: Helper.numberFormat(double.parse(formState.dataWebsite!['tongtien'].toString())),
                            onChanged: (value) {
                              ref
                                  .read(formPhieuThuProvider.notifier)
                                  .changeData(
                                  type: _typeData,
                                  key: 'tongtien',
                                  value: value.replaceAll('.',''));
                            },
                            inputFormatters: [
                              CurrencyTextInputFormatter(symbol: ''),
                            ],
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(
                                  errorText: 'Không bỏ trống.'),
                            ]),
                          ),
                        ],
                      ),
                    ),
                    ndGapW16(),
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        children: [
                          lableTextForm('Ngày ký'),
                          TextFormField(
                            readOnly: true,
                            controller: TextEditingController(text: ngayDangKy.formatDateTime()),
                            onTap: () async {
                              final DateTime? selDate = await Helper.onSelectDate(context, initialDate: ngayDangKy);
                              String txtDate = DateTime.now().formatDateTime();
                              if(selDate!=null){
                                txtDate = selDate.formatDateTime();
                                ref.read(formPhieuThuProvider.notifier).changeData(
                                    type: _typeData, key: 'ngaykyhd', value: selDate);
                              }
                              setState(() {
                                ngayDangKy = selDate ?? ngayDangKy;
                              });
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
                          lableTextForm('Ngày bàn giao'),
                          TextFormField(
                            decoration: const InputDecoration(hintText: 'dd-mm-yyyy'),
                            readOnly: true,
                            controller: TextEditingController(text: (ngayBanGiao!=null) ? ngayBanGiao!.formatDateTime() : null),
                            onTap: () async {
                              final DateTime? selDate = await Helper.onSelectDate(context, initialDate: ngayBanGiao);
                              String txtDate = '';
                              if(selDate!=null){
                                txtDate = selDate.formatDateTime();
                                ref.read(formPhieuThuProvider.notifier).changeData(
                                    type: _typeData, key: 'ngaybangiao', value: selDate);
                              }
                              setState(() {
                                ngayBanGiao = selDate ?? ngayBanGiao;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        children: [
                          lableTextForm('Tìm chọn file'),
                          SizedBox(
                            width: double.infinity,
                            height: 45,
                            child: FilledButton(
                                onPressed: () {},
                                child: const Text('Tìm chọn File')),
                          ),
                        ],
                      ),
                    ),
                    ndGapW16(),
                    Expanded(
                      flex: 5,
                      child: Wrap(
                        children: [
                          lableTextForm('Nhập từ khoá cần tìm'),
                          TextFormField(

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        children: [
                          lableTextForm('Ghi chú'),
                          TextFormField(
                            minLines: 3,
                            maxLines: 3,
                            initialValue: formState.dataWebsite?['ghichu'],
                            onChanged: (value) {
                              ref
                                  .read(formPhieuThuProvider.notifier)
                                  .changeData(type: _typeData ,key: 'ghichu', value: value);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
