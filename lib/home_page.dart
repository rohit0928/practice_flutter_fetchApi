import 'package:api_fetch/datamodel.dart';
import 'package:api_fetch/detailspage.dart';
import 'package:api_fetch/services/apiservices.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  DataModel dataModel = DataModel();
  bool isReady = false;
  var col = Colors.greenAccent;
  _getDataModel() {
    isReady = true;
    ApiServices().getDataModel().then((value) {
      setState(() {
        dataModel = value!;
        isReady = false;
      });
    }).onError((error, stackTrace) {
      print(error);
    });
  }

  @override
  void initState() {
    _getDataModel();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text('Api Fetch'),
        ),
        body: isReady == true
            ? const Center(
                child: CircularProgressIndicator(),
              )
            :
            // : Column(
            //     children: [
            //       Text(dataModel.users![2].firstName!.toString()),
            //       CachedNetworkImage(
            //           imageUrl: dataModel.users![1].image.toString())
            //     ],
            //   ),
            ListView.builder(
                itemCount: dataModel.users!.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    CachedNetworkImage(
                      imageUrl: dataModel.users![index].image.toString(),
                      fit: BoxFit.cover,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dataModel.users![index].maidenName!.toString(),
                          style: const TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          dataModel.users![index].lastName!.toString(),
                          style: const TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'ID',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          dataModel.users![index].id.toString(),
                          style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.yellow[900],
                            textStyle: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                        dataModel: dataModel,
                                      )));
                        },
                        child: const Text('Full Details'))
                  ]);
                }));
  }
}
