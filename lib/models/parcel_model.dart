import 'package:fyp_project/models/parcel_size_model.dart';
import 'package:fyp_project/models/receiver_model.dart';
import 'package:fyp_project/models/sender_model.dart';

class Parcel {
  final String itemName;
  final String parcelValue;
  final SenderModel sender;
  final ReceiverModel receiver;
  final String parcelSize;
  final String parcelCategory;

  Parcel(
      {required this.itemName,
      required this.parcelValue,
      required this.sender,
      required this.receiver,
      required this.parcelSize,
      required this.parcelCategory});
}
