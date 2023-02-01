import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:project/API%20Project/API/albumapi.dart';
import 'package:project/API%20Project/Model/Commentmodel.dart';
import 'package:http/http.dart' as http;
import 'package:project/API%20Project/Model/albummodel.dart';
import 'package:project/API%20Project/Model/imagemodel.dart';
import 'package:project/API%20Project/Model/postmodel.dart';
import 'package:project/API%20Project/Model/todosmodel.dart';

class TodosAPI extends StatefulWidget {
  const TodosAPI({super.key});

  @override
  State<TodosAPI> createState() => _TodosAPIState();
}

Future<List<TodosModel>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
  if (response.statusCode == 200) {
    List myJsonResponse = jsonDecode(response.body);
    return myJsonResponse.map((data) => new TodosModel.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album ');
  }
}

class _TodosAPIState extends State<TodosAPI> {
  late Future<List<TodosModel>> myfuturelist;

  @override
  void initState() {
    super.initState();
    myfuturelist = fetchData();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(" Image API"),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TodosAPI()));
                    },
                    icon: Icon(Icons.navigate_next))
              ],
            ),
            body: Container(
                child: FutureBuilder<List<TodosModel>>(
                    future: myfuturelist,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        List<TodosModel> mylist = snapshot.data!;

                        return ListView.builder(
                            itemCount: mylist.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                  onTap: () {
                                    print(" =======>${mylist[index].id}");
                                  },
                                  child: Column(children: [
                                    Text(
                                      mylist[index].title,
                                      style:
                                          TextStyle(color: Colors.amberAccent),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ]));
                            });
                      } else if (snapshot.hasError) {}
                      return CircularProgressIndicator();
                    }))));
  }
}
