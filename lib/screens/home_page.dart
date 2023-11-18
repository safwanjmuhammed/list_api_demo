import 'package:api_demo/model/apimodel.dart';
import 'package:api_demo/screens/api_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Api service = Api();
  List<ApiModel> listData = [];

  fetchApiData() async {
    final List<ApiModel> apiData = await service.fetchimages();
    setState(() {
      listData = apiData;
    });
  }

  @override
  void initState() {
    fetchApiData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: listData.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Center(
                child: GridView.builder(
                // shrinkWrap: true,
                padding: EdgeInsets.all(5),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: NetworkImage(listData[index].url))),
                      height: 40,
                      width: 20,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(listData[index].id.toString()),
                                Text(listData[index].title.toString()),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              )),
      ),
    );
  }
}
