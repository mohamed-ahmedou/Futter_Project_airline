import 'package:airline/Constants/api.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListStatistique {
  Future<List<PieChartSectionData>> fetchdata() async {
    final response = await http.get(Uri.parse(urlapi + 'pro/stat'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(response.body);
      final retard = data['retard'];
      final non_retard = data['non_retard'];
      final total = data['total'];
      print('retard est : $retard');
      final List<PieChartSectionData> dataapi = [
        PieChartSectionData(
          color: Colors.red,
          value: retard.toDouble(),
          title: '${((retard * 100) / (total)).toStringAsFixed(1)}%',
          radius: 50,
          titleStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        PieChartSectionData(
          color: Colors.green,
          value: non_retard.toDouble(),
          title: '${((non_retard * 100) / (total)).toStringAsFixed(1)}%',
          radius: 50,
          titleStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ];
      return dataapi;
    } else
      (throw Exception('Failed to load data'));
  }

  List<PieChartSectionData> showingSections() {
    return [
      PieChartSectionData(
        color: Colors.red,
        value: 10,
        title: '10%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      PieChartSectionData(
        color: Colors.blue,
        value: 30,
        title: '30%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),

      PieChartSectionData(
        color: Colors.green,
        value: 40,
        title: '40%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      // PieChartSectionData(
      //   color: Colors.cyan,
      //   value: 10,
      //   title: '10%',
      //   radius: 50,
      //   titleStyle: TextStyle(
      //     fontSize: 16,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.white,
      //   ),
      // ),

      // PieChartSectionData(
      //   color: Colors.orange,
      //   value: 10,
      //   title: '10%',
      //   radius: 50,
      //   titleStyle: TextStyle(
      //     fontSize: 16,
      //     fontWeight: FontWeight.bold,
      //     color: Colors.white,
      //   ),
      // ),

      PieChartSectionData(
        color: Colors.yellow,
        value: 20,
        title: '20%',
        radius: 50,
        titleStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ];
  }
}
