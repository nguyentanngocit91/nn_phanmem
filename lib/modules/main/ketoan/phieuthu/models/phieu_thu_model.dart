class PhieuThuModel {
  String? sId;
  String? maphieuthu;
  List<Hopdong>? hopdong;
  KhachhangId? khachhangId;
  List<Nhanvien>? nhanvien;
  List<String>? files;
  double? tongtien;
  String? vat;
  String? ngaytao;
  String? ngaynopcty;
  String? httt;
  String? ghichu;

  PhieuThuModel(
      {
        this.sId,
        this.maphieuthu,
        this.hopdong,
        this.khachhangId,
        this.nhanvien,
        this.files,
        this.tongtien,
        this.vat,
        this.ngaytao,
        this.ngaynopcty,
        this.httt,
        this.ghichu,
        });

  PhieuThuModel.fromJson(Map<String, dynamic> json) {

    sId = json['_id'];
    maphieuthu = json['maphieuthu'];
    if (json['hopdong'] != null) {
      hopdong = <Hopdong>[];
      json['hopdong'].forEach((v) {
        hopdong!.add(Hopdong.fromJson(v));
      });
    }
    khachhangId = json['khachhangId'] != null
        ? KhachhangId.fromJson(json['khachhangId'])
        : null;
    if (json['nhanvien'] != null) {
      nhanvien = <Nhanvien>[];
      json['nhanvien'].forEach((v) {
        nhanvien!.add(Nhanvien.fromJson(v));
      });
    }
    files = json['files'].cast<String>();
    tongtien = double.parse(json['tongtien'].toString());
    vat = json['vat'];
    ngaytao = json['ngaytao'];
    ngaynopcty = json['ngaynopcty'];
    httt = json['httt'];
    ghichu = json['ghichu'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['_id'] = sId;
    data['maphieuthu'] = maphieuthu;
    if (hopdong != null) {
      data['hopdong'] = hopdong!.map((v) => v.toJson()).toList();
    }
    if (khachhangId != null) {
      data['khachhangId'] = khachhangId!.toJson();
    }
    if (nhanvien != null) {
      data['nhanvien'] = nhanvien!.map((v) => v.toJson()).toList();
    }
    data['files'] = files;
    data['tongtien'] = tongtien;
    data['vat'] = vat;
    data['ngaytao'] = ngaytao;
    data['ngaynopcty'] = ngaynopcty;
    data['httt'] = httt;
    data['ghichu'] = ghichu;

    return data;
  }
}

class Hopdong {
  String? sId;
  String? mahopdong;
  String? tenhopdong;
  String? loaihopdong;
  double? tongtien;

  Hopdong({this.sId, this.mahopdong, this.tenhopdong, this.loaihopdong, this.tongtien});

  Hopdong.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    mahopdong = json['mahopdong'];
    tenhopdong = json['tenhopdong'];
    loaihopdong = json['loaihopdong'];
    tongtien = double.parse(json['tongtien'].toString());
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['mahopdong'] = mahopdong;
    data['tenhopdong'] = tenhopdong;
    data['loaihopdong'] = loaihopdong;
    data['tongtien'] = tongtien;
    return data;
  }
}

class KhachhangId {
  String? sId;
  String? makhachhang;

  KhachhangId({this.sId, this.makhachhang});

  KhachhangId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    makhachhang = json['makhachhang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['makhachhang'] = makhachhang;
    return data;
  }
}

class Nhanvien {
  PhongbanId? phongbanId;
  String? manhanvien;
  String? parentId;
  String? sId;
  String? hoten;

  Nhanvien(
      {this.phongbanId, this.manhanvien, this.parentId, this.sId, this.hoten});

  Nhanvien.fromJson(Map<String, dynamic> json) {
    phongbanId = json['phongbanId'] != null
        ? PhongbanId.fromJson(json['phongbanId'])
        : null;
    manhanvien = json['manhanvien'];
    parentId = json['parentId'];
    sId = json['_id'];
    hoten = json['hoten'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (phongbanId != null) {
      data['phongbanId'] = phongbanId!.toJson();
    }
    data['manhanvien'] = manhanvien;
    data['parentId'] = parentId;
    data['_id'] = sId;
    data['hoten'] = hoten;
    return data;
  }
}

class PhongbanId {
  String? sId;
  String? maphongban;
  String? manhanh;
  String? tenphongban;

  PhongbanId({this.sId, this.maphongban, this.manhanh, this.tenphongban});

  PhongbanId.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    maphongban = json['maphongban'];
    manhanh = json['manhanh'];
    tenphongban = json['tenphongban'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['maphongban'] = maphongban;
    data['manhanh'] = manhanh;
    data['tenphongban'] = tenphongban;
    return data;
  }
}