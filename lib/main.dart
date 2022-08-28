// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FlutterDemo(),
    ),
  );
}

class FlutterDemo extends StatefulWidget {
  const FlutterDemo({
    Key? key,
  }) : super(key: key);

  @override
  State<FlutterDemo> createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Center(
          child: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return Container(
            height: 40,
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))),
          );
        },
      )),
    );
  }
}
