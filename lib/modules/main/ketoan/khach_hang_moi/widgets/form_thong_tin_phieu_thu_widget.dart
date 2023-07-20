part of '../khach_hang_moi_layout.dart';

class FormThongTinPhieuThuWidget extends ConsumerStatefulWidget {
  const FormThongTinPhieuThuWidget({super.key});

  @override
  ConsumerState createState() => _FormThongTinPhieuThuWidgetState();
}

class _FormThongTinPhieuThuWidgetState
    extends ConsumerState<FormThongTinPhieuThuWidget> with FormUIMixins {

  @override
  Widget build(BuildContext context) {
    FormKhachHangMoiState formKhachHangMoiState = ref.watch(formKhachHangMoiProvider);
    return Wrap(
      runSpacing: 25,
      children: [
        bodyForm(
          backgroundColor: Colors.grey.shade300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Phương thức thanh toán:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ndGapW8(),
                  Radio<HinhThucThanhToan>(
                    value: HinhThucThanhToan.cod,
                    groupValue: _httt,
                    onChanged: (HinhThucThanhToan? value) {
                      setState(() {
                        _httt = value!;
                      });
                    },
                  ),
                  const Text('Tiền mặt'),
                  ndGapW16(),
                  Radio<HinhThucThanhToan>(
                    value: HinhThucThanhToan.bank,
                    groupValue: _httt,
                    onChanged: (HinhThucThanhToan? value) {
                      setState(() {
                        _httt = value!;
                      });
                    },
                  ),
                  const Text('Chuyển khoản'),
                ],
              ),
              ndGapW48(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Loại Phiếu thu:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ndGapW8(),
                  Radio<LoaiPhieuThu>(
                    value: LoaiPhieuThu.phieuthu,
                    groupValue: _loaiPhieuThu,
                    onChanged: (LoaiPhieuThu? value) {
                      setState(() {
                        _loaiPhieuThu = value!;
                      });
                    },
                  ),
                  const Text('Phiếu thu'),
                  ndGapW16(),
                  Radio<LoaiPhieuThu>(
                    value: LoaiPhieuThu.phieuthuBG,
                    groupValue: _loaiPhieuThu,
                    onChanged: (LoaiPhieuThu? value) {
                      setState(() {
                        _loaiPhieuThu = value!;
                      });
                    },
                  ),
                  const Text('Phiếu thu bàn giao'),
                  ndGapW16(),
                  Radio<LoaiPhieuThu>(
                    value: LoaiPhieuThu.phieuthuApp,
                    groupValue: _loaiPhieuThu,
                    onChanged: (LoaiPhieuThu? value) {
                      setState(() {
                        _loaiPhieuThu = value!;
                      });
                    },
                  ),
                  const Text('Phiếu thu App'),
                  ndGapW16(),
                  Radio<LoaiPhieuThu>(
                    value: LoaiPhieuThu.phieuthuBGApp,
                    groupValue: _loaiPhieuThu,
                    onChanged: (LoaiPhieuThu? value) {
                      setState(() {
                        _loaiPhieuThu = value!;
                      });
                    },
                  ),
                  const Text('Phiếu thu bàn giao App'),
                ],
              ),
            ],
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Ngày nộp'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Số phiếu thu / CK'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Mã nhân viên'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Nhân viên kinh doanh'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Phòng'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Khu vực'),
                  TextFormField(),
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
                  lableTextForm('Tổng tiền thu'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Phí web'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Phí nâng cấp web'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Phí hosting'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Phí nâng cấp hosting'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              child: Wrap(
                children: [
                  lableTextForm('Phí tên miền'),
                  TextFormField(),
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
                  lableTextForm('Phí App'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              flex: 1,
              child: Wrap(
                children: [
                  lableTextForm('Phí VAT'),
                  TextFormField(),
                ],
              ),
            ),
            ndGapW16(),
            Expanded(
              flex: 4,
              child: Wrap(
                children: [
                  lableTextForm('Ghi chú'),
                  TextFormField(),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Chọn loại hợp đồng:'),
            ndGapW32(),
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Checkbox(
                  value: formKhachHangMoiState.isHopDongWebsite,
                  onChanged: (bool? value) {
                    ref.read(formKhachHangMoiProvider.notifier).checkLoaiHopDong(isHopDongWebsite: value ?? false);
                  },
                ),
                const Text("Website"),
              ],
            ),
            ndGapW16(),
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Checkbox(
                  value: formKhachHangMoiState.isHopDongDomain,
                  onChanged: (bool? value) {
                      ref.read(formKhachHangMoiProvider.notifier).checkLoaiHopDong(isHopDongDomain: value ?? false);
                  },
                ),
                const Text("Domain"),
              ],
            ),
            ndGapW16(),
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Checkbox(
                  value: formKhachHangMoiState.isHopDongHosting,
                  onChanged: (bool? value) {
                    ref.read(formKhachHangMoiProvider.notifier).checkLoaiHopDong(isHopDongHosting: value ?? false);
                  },
                ),
                const Text("Hosting"),
              ],
            ),
            ndGapW16(),
            Wrap(
              direction: Axis.horizontal,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Checkbox(
                  value: formKhachHangMoiState.isHopDongApp,
                  onChanged: (bool? value) {
                    ref.read(formKhachHangMoiProvider.notifier).checkLoaiHopDong(isHopDongApp: value ?? false);
                  },
                ),
                const Text("App"),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
