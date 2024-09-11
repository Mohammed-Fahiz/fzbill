class ItemModel {
  final int? id;
  final String itemName;
  final double itemPrice;
  final int priority;

//<editor-fold desc="Data Methods">
  const ItemModel({
    this.id,
    required this.itemName,
    required this.itemPrice,
    required this.priority,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          itemName == other.itemName &&
          itemPrice == other.itemPrice &&
          priority == other.priority);

  @override
  int get hashCode =>
      id.hashCode ^ itemName.hashCode ^ itemPrice.hashCode ^ priority.hashCode;

  @override
  String toString() {
    return 'ItemModel{' +
        ' id: $id,' +
        ' itemName: $itemName,' +
        ' itemPrice: $itemPrice,' +
        ' priority: $priority,' +
        '}';
  }

  ItemModel copyWith({
    int? id,
    String? itemName,
    double? itemPrice,
    int? priority,
  }) {
    return ItemModel(
      id: id ?? this.id,
      itemName: itemName ?? this.itemName,
      itemPrice: itemPrice ?? this.itemPrice,
      priority: priority ?? this.priority,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'itemName': this.itemName,
      'itemPrice': this.itemPrice,
      'priority': this.priority,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] as int,
      itemName: map['itemName'] as String,
      itemPrice: map['itemPrice'] as double,
      priority: map['priority'] as int,
    );
  }

//</editor-fold>
}
