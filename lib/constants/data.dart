import 'package:flutter/material.dart';

class OverviewCardDataModel {
  final String title;
  final String value;
  final Color color;
  final bool isActive;

  OverviewCardDataModel({
    required this.title,
    required this.value,
    required this.color,
    required this.isActive});

  static final List<OverviewCardDataModel> mockData = [
    OverviewCardDataModel(title: "Rides in progress", value: "7", color: Colors.orange, isActive: true),
    OverviewCardDataModel(title: "Delivered Packages", value: "17", color: Colors.lightGreen, isActive: true),
    OverviewCardDataModel(title: "Canceled Deliveries", value: "4", color: Colors.red, isActive: true),
    OverviewCardDataModel(title: "Scheduled Deliveries", value: "10", color: Colors.purple, isActive: true),
  ];
}