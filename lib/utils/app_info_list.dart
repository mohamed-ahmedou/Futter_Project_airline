import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Constants/api.dart';

Future<List<Map<String, dynamic>>> fetchactive() async {
  final response = await http.get(Uri.parse(urlapi + 'pro/activecompagnie'));
  if (response.statusCode == 200) {
    final List<dynamic> responsedata = jsonDecode(response.body);
    final List<Map<String, dynamic>> dataactive = responsedata
        .cast<Map<String, dynamic>>()
        .map((json) => {
              'place': json['Country'],
              'destination': json['ICAO'],
              'price': json['Name'],
              'image': 'airline1.jpg',
            })
        .toList();
    return dataactive;
  } else {
    throw Exception('il ya une erreur!');
  }
}

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'Marhaba.jpg',
    'place': 'Hotel MARHABA',
    'destination': 'NKTT',
    'price': 20
  },
  {
    'image': 'TFFILA.jpg',
    'place': 'Hotel TFFILA',
    'destination': 'NKTT',
    'price': 40
  },
  {
    'image': 'Sahel.jpg',
    'place': 'Hotel SAHEL',
    'destination': 'NOUADHIBOU',
    'price': 68
  },
];
Future<List<Map<String, dynamic>>> fetchdatatest() async {
  final response = await http.get(Uri.parse(urlapi + 'pro/mauritanie'));
  if (response.statusCode == 200) {
    final List<dynamic> responseData = jsonDecode(response.body);
    final List<Map<String, dynamic>> data = responseData
        .cast<Map<String, dynamic>>()
        .map((json) => {
              'from': {'code': json['ICAO'], 'name': json['Country']},
              'to': {'code': json['IATA'], 'name': json['City']},
              'flying_time': json['flying_time'],
              'date': json['DST'],
              'departure_time': json['Timezone'],
              'number': json['Timezone']
            })
        .toList();
    return data;
  } else {
    throw Exception('Failed to load data');
  }
}

List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': "NKT", 'name': "NOUAKCHOTT"},
    'to': {'code': "KFF", 'name': "KIFFA"},
    'flying_time': '9H 30M',
    'date': "1 Mars",
    'departure_time': "08:00 AM",
    "number": 23
  },
  {
    'from': {'code': "NKT", 'name': "NOUAKCHOTT"},
    'to': {'code': "NDB", 'name': "NOUADHIBOU"},
    'flying_time': '02:00',
    'date': "10 MAY",
    'departure_time': "01:20",
    "number": 45
  },
  {
    'from': {'code': "NKT", 'name': "NOUAKCHOTT"},
    'to': {'code': "ATR", 'name': "ATAR"},
    'flying_time': '07:45',
    'date': "17 MAY",
    'departure_time': "07:00",
    "number": 99
  },
];
