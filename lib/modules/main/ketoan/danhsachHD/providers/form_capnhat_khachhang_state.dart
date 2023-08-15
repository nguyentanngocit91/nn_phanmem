part of 'form_capnhat_khachhang_provider.dart';

class FormCapNhatKhachHangState {
  final Map<String, String>? data;
  final Map? dataKhachHang;
  final FormStatus status;
  final String? message;
  final Map<String, dynamic>? result;
  final loadingStatus loading;
  final bool success;
  final List? uploadList;

  const FormCapNhatKhachHangState({
    this.data = null,
    this.dataKhachHang,
    this.status = FormStatus.pure,
    this.message = '',
    this.result = null,
    this.loading = loadingStatus.NONE,
    this.success = false,
    this.uploadList = null,
  });

  FormCapNhatKhachHangState copyWith({
    Map<String, String>? data,
    Map? dataKhachHang,
    FormStatus? status,
    String? message,
    Map<String, dynamic>? result,
    loadingStatus? loading,
    bool? success,
    List? uploadList,
  }) {
    return FormCapNhatKhachHangState(
        data: data ?? this.data,
        dataKhachHang: dataKhachHang ?? this.dataKhachHang,
        result: result ?? this.result,
        status: status ?? this.status,
        message: message ?? this.message,
        loading: loading ?? this.loading,
        success: success ?? this.success,
        uploadList: uploadList ?? this.uploadList);
  }
}