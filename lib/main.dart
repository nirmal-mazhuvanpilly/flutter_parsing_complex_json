import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_parsing_complex_json/models/address.dart';
import 'package:flutter_parsing_complex_json/models/page.dart';
import 'package:flutter_parsing_complex_json/models/photos.dart';
import 'package:flutter_parsing_complex_json/models/product.dart';
import 'package:flutter_parsing_complex_json/models/shape.dart';
import 'package:flutter_parsing_complex_json/models/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Complex Json Parsing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<String> _loadAsset(String asset) async {
    return await rootBundle.loadString('assets/$asset.json');
  }

  Future loadStudent() async {
    String jsonString = await _loadAsset("student");
    final jsonResponse = json.decode(jsonString);
    // print(jsonResponse);
    Student student = Student.fromJson(jsonResponse);
    print(student.studentId);
    print(student.studentName);
    print(student.studentScores);
  }

  Future loadAddress() async {
    String jsonString = await _loadAsset("address");
    final jsonResponse = json.decode(jsonString);
    // print(jsonResponse);
    Address address = Address.fromJson(jsonResponse);
    print(address.city);
    address.streets.forEach((element) => print(element));
  }

  Future loadShape() async {
    String jsonString = await _loadAsset("shape");
    final jsonResponse = json.decode(jsonString);
    // print(jsonResponse);
    Shape shape = Shape.fromJson(jsonResponse);
    print(shape.shapeName);
    print(shape.property.width);
    print(shape.property.breadth);
  }

  Future loadProduct() async {
    String jsonString = await _loadAsset("product");
    final jsonResponse = json.decode(jsonString);
    // print(jsonResponse);
    Product product = Product.fromJson(jsonResponse);
    print(product.id);
    print(product.name);
    print(product.images.elementAt(0).id);
    print(product.images.elementAt(0).imageName);
    print(product.images.elementAt(1).id);
    print(product.images.elementAt(1).imageName);
  }

  Future loadPhotos() async {
    String jsonString = await _loadAsset("photos");
    final jsonResponse = json.decode(jsonString);
    // print(jsonResponse);
    PhotoList photoList = PhotoList.fromJson(jsonResponse);
    photoList.photos.forEach((element) => print(element.id));
    photoList.photos.forEach((element) => print(element.title));
    photoList.photos.forEach((element) => print(element.url));
  }

  Future loadPage() async {
    String jsonString = await _loadAsset("page");
    final jsonResponse = json.decode(jsonString);
    // print(jsonResponse);
    Pages page = Pages.fromJson(jsonResponse);
    print(page.page);
    print(page.perPage);
    print(page.total);
    print(page.totalPages);
    print(page.author.firstName);
    print(page.author.lastName);
    page.data.forEach((element) {
      print(element.id);
      print(element.firstName);
      print(element.lastName);
      print(element.avatar);
    });

    page.data.forEach((element) {
      element.image.forEach((element) {
        print(element.id);
        print(element.imageName);
      });
    });
  }

  @override
  void initState() {
    // loadStudent();
    // loadAddress();
    // loadShape();
    // loadProduct();
    // loadPhotos();
    // loadPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
