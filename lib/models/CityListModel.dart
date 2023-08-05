import '../models/ExtraChragesListModel.dart';

import 'PaginationModel.dart';

class RegionListModel {
  PaginationModel? pagination;
  List<RegionData>? data;

  RegionListModel({this.pagination, this.data});

  RegionListModel.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new PaginationModel.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      data = <RegionData>[];
      json['data'].forEach((v) {
        data!.add(new RegionData.fromJson(v));
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

class RegionData {
  int? id;
  String? name;
  String? address;
  int? stateId;
  String? stateName;
  Country? state;
  int? status;
  num? fixedCharges;
  List<ExtraChargesData>? extraCharges;
  num? cancelCharges;
  num? minDistance;
  num? minWeight;
  num? perDistanceCharges;
  num? perWeightCharges;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;
  String? commissionType;
  num? adminCommission;

  bool isCheck = false;

  RegionData({
    this.id,
    this.name,
    this.address,
    this.stateId,
    this.stateName,
    this.state,
    this.status,
    this.fixedCharges,
    this.extraCharges,
    this.cancelCharges,
    this.minDistance,
    this.minWeight,
    this.perDistanceCharges,
    this.perWeightCharges,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.commissionType,
    this.adminCommission,
    this.isCheck = false,
  });

  RegionData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    stateId = json['country_id'];
    stateName = json['country_name'];
    state = json['state'] != null ? new Country.fromJson(json['state']) : null;
    status = json['status'];
    fixedCharges = json['fixed_charges'];
    if (json['extra_charges'] != null) {
      extraCharges = <ExtraChargesData>[];
      json['extra_charges'].forEach((v) {
        extraCharges!.add(new ExtraChargesData.fromJson(v));
      });
    }
    cancelCharges = json['cancel_charges'];
    minDistance = json['min_distance'];
    minWeight = json['min_weight'];
    perDistanceCharges = json['per_distance_charges'];
    perWeightCharges = json['per_weight_charges'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    commissionType = json['commission_type'];
    adminCommission = json['admin_commission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['address'] = this.address;
    data['country_id'] = this.stateId;
    data['country_name'] = this.stateName;
    if (this.state != null) {
      data['state'] = this.state!.toJson();
    }
    data['status'] = this.status;
    data['fixed_charges'] = this.fixedCharges;
    if (this.extraCharges != null) {
      data['extra_charges'] =
          this.extraCharges!.map((v) => v.toJson()).toList();
    }
    data['cancel_charges'] = this.cancelCharges;
    data['min_distance'] = this.minDistance;
    data['min_weight'] = this.minWeight;
    data['per_distance_charges'] = this.perDistanceCharges;
    data['per_weight_charges'] = this.perWeightCharges;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    data['commission_type'] = this.commissionType;
    data['admin_commission'] = this.adminCommission;
    return data;
  }
}

class Country {
  int? id;
  String? name;
  String? code;
  String? distanceType;
  String? weightType;
  String? links;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  Country(
      {this.id,
      this.name,
      this.code,
      this.distanceType,
      this.weightType,
      this.links,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    code = json['code'];
    distanceType = json['distance_type'];
    weightType = json['weight_type'];
    links = json['links'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['code'] = this.code;
    data['distance_type'] = this.distanceType;
    data['weight_type'] = this.weightType;
    data['links'] = this.links;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}

class ExtraCharges {
  int? id;
  String? title;
  String? chargesType;
  int? charges;
  int? stateId;
  int? cityId;
  int? status;
  String? createdAt;
  String? updatedAt;
  String? deletedAt;

  ExtraCharges(
      {this.id,
      this.title,
      this.chargesType,
      this.charges,
      this.stateId,
      this.cityId,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});

  ExtraCharges.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    chargesType = json['charges_type'];
    charges = json['charges'];
    stateId = json['country_id'];
    cityId = json['city_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['charges_type'] = this.chargesType;
    data['charges'] = this.charges;
    data['country_id'] = this.stateId;
    data['city_id'] = this.cityId;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
