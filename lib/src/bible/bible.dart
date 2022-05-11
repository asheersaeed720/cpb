class BibleModel {
  List field;

  BibleModel({
    required this.field,
  });

  factory BibleModel.fromJson(Map<String, dynamic> json) {
    return BibleModel(field: json['field']);
  }

  @override
  String toString() => 'BibleModel(field: $field)';
}
