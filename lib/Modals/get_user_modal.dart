// ignore_for_file: unnecessary_null_in_if_null_operators

class GetUserModal {
  GetUserModal({
    required this.status,
    required this.data,
  });

  String status;
  List data;

  factory GetUserModal.fromJson(Map<String, dynamic> json) => GetUserModal(
        status: json["status"],
        data: List<dynamic>.from(json["data"].map((x) =>
            Map.from(x).map((k, v) => MapEntry<String, String>(k, v ?? null)))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => Map.from(x)
            .map((k, v) => MapEntry<String, dynamic>(k, v ?? null)))),
      };
}
