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

class OverviewRevenueInfoDataModel {
  final String title;
  final String amount;

  OverviewRevenueInfoDataModel({
    required this.title, required this.amount
  });

  static final List<OverviewRevenueInfoDataModel> mockData = [
    OverviewRevenueInfoDataModel(title: "22/06/2022", amount: "28"),
    OverviewRevenueInfoDataModel(title: "23/06/2022", amount: "35"),
    OverviewRevenueInfoDataModel(title: "24/06/2022", amount: "31"),
    OverviewRevenueInfoDataModel(title: "25/06/2022", amount: "42"),
  ];
}

class DriverDataModel {
  final String name;
  final String location;
  final double rating;

  DriverDataModel({
    required this.name,
    required this.location,
    required this.rating
  });

  static final List<DriverDataModel> mockData = [
    DriverDataModel(name: "Hanri", location: "Paris", rating: 10),
    DriverDataModel(name: "Bouba", location: "Paris", rating: 7),
    DriverDataModel(name: "OusJames", location: "Paris", rating: 10),
    DriverDataModel(name: "Ilies", location: "Paris", rating: 10),
    DriverDataModel(name: "Houssem", location: "Paris", rating: 3.5),
  ];
}

class ClientDataModel {
  final String name;
  final String location;
  final double rating;

  ClientDataModel({
    required this.name,
    required this.location,
    required this.rating
  });

  static final List<DriverDataModel> mockData = [
    DriverDataModel(name: "Hanri", location: "Paris", rating: 10),
    DriverDataModel(name: "Bouba", location: "Paris", rating: 7),
    DriverDataModel(name: "OusJames", location: "Paris", rating: 10),
    DriverDataModel(name: "Ilies", location: "Paris", rating: 10),
    DriverDataModel(name: "Houssem", location: "Paris", rating: 3.5),
  ];
}