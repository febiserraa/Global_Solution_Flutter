import 'package:flutter/material.dart';

class HistoryModel {
  final String farmName;
  final String farmId;
  final String culture;
  final List<String> initialPests;
  final List<String> initialDiseases;
  final bool initialIrrigation;
  final List<String> progressHistory;
  String imageUrl;

  HistoryModel(
      {required this.farmName,
      required this.farmId,
      required this.culture,
      required this.initialPests,
      required this.initialDiseases,
      required this.initialIrrigation,
      required this.progressHistory,
      required this.imageUrl});
}
