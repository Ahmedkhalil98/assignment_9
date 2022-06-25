import 'package:assignment_9/mock/mock_data.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  int index;
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
                    child:
                        Image.network(mockdata[index]["city_image"].toString()),
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
                child: Text(mockdata[index]["city_name"].toString(),
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(mockdata[index]["description"].toString(),
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ]),
      ),
    );
  }
}
