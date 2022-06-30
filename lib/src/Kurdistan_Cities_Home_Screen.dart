import 'package:assignment_9/mock/mock_data.dart';
import 'package:assignment_9/mock/model.dart';
import 'package:assignment_9/src/Kurdistan_Cities_Details_screen.dart';
import 'package:flutter/material.dart';

class KurdistanCities extends StatefulWidget {
  const KurdistanCities({Key? key}) : super(key: key);

  @override
  State<KurdistanCities> createState() => _KurdistanCitiesState();
}

class _KurdistanCitiesState extends State<KurdistanCities> {
  List<DataModel> _citymodel = [];

  @override
  Widget build(BuildContext context) {
    _citymodel = mockdata.map(
      (element) {
        return DataModel.fromMap(element);
      },
    ).toList();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Kurdistan Cities",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            toolbarHeight: 70,
            backgroundColor: Colors.grey[300],
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: mockdata.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 200,
                                width: 300,
                                child:
                                    Image.network(_citymodel[index].cityimage),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(_citymodel[index].cityname,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      citymodel: _citymodel[index],
                                    )));
                          },
                        );
                      })),
            ],
          )),
    );
  }
}
