import 'package:assignment_9/mock/mock_data.dart';
import 'package:assignment_9/mock/model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({
    Key? key,
    required this.citymodel,
  }) : super(key: key);

  final DataModel citymodel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    child: Image.network(citymodel.cityimage),
                  ),
                  Positioned(
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(citymodel.cityname,
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(citymodel.description,
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ]),
      ),
    );
  }
}
