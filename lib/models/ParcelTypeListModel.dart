import 'PaginationModel.dart';

class PackageTypeListModel {
  PaginationModel? pagination;
  List<PackageTypeData>? data;

  PackageTypeListModel({this.pagination, this.data});

  PackageTypeListModel.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new PaginationModel.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      data = <PackageTypeData>[];
      json['data'].forEach((v) {
        data!.add(new PackageTypeData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PackageTypeData {
  int? id;
  String? type;
  String? label;
  String? value;
  String? createdAt;
  String? updatedAt;

  PackageTypeData(
      {this.id,
      this.type,
      this.label,
      this.value,
      this.createdAt,
      this.updatedAt});

  PackageTypeData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    label = json['label'];
    value = json['value'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['label'] = this.label;
    data['value'] = this.value;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
