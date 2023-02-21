class BusModel {
  bool? status;
  List? busList;

  BusModel({this.status, this.busList});

  BusModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['bus_list'] != null) {
      busList = [];
      json['bus_list'].forEach((v) {
        busList!.add(BusModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = this.status;
    if (this.busList != null) {
      data['bus_list'] = this.busList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
