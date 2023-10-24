import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quate/utils/Global.dart';

import '../model/model_list.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

Random random = Random();

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    // List<Quote> quotes = QuoteList.map((e) => Quote.FromMap(data = i)).toList();
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFC4C4C4),
          leading: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("flutter Quates app"),
                    content: Container(
                      height: 200,
                      width: 250,
                      color: Colors.red,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.camera),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.photo),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: const Icon(Icons.camera_alt),
          ),
          title: const Text(
            "Home Page",
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.teal,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/474x/ca/68/5f/ca685f606c70500af1fadcffc5e470e9.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.only(top: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: QuoteList.map(
                (e) => SizedBox(
                  height: 220,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      height: 200,
                      width: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://i.pinimg.com/236x/7a/92/c2/7a92c2b263d1f111422817649a53cc8e.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${e['quote']}",
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "${e['author']}",
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ).toList(),
            ),
          ),
        ),
      ),
      onWillPop: () async {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              actions: [
                ElevatedButton(
                  onPressed: () {
                    exit(0);
                  },
                  child: Text("yes"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No"),
                ),
              ],
            );
          },
        );
        return true;
      },
    );
  }
}
