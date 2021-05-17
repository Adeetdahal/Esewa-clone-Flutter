import 'package:flutter/material.dart';


class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (ctx) => Demo1(),
            ),
          ),
          child: Text('Demonstrate FutureBuilder'),
        ),
      ),
    );

  }
}

class Demo1 extends StatelessWidget {
  Future<String> getData() {
    return Future.delayed(Duration(seconds: 2), () {
      return "I am data";
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Future Demo Page'),
        ),
        body: FutureBuilder(
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    '${snapshot.error} occured',
                    style: TextStyle(fontSize: 18),
                  ),
                );

              } else if (snapshot.hasData) {
                final data = snapshot.data as String;
                return Center(
                  child: Text(
                    '$data',
                    style: TextStyle(fontSize: 18),
                  ),
                );
              }
            }

            return Center(
              child: CircularProgressIndicator(),
            );
          },

          future: getData(),
        ),
      ),
    );
  }
}