import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  final countryList = ['Afghanistan','Bangladesh','Canada','Denmark','England','France','Greece','Honduras'];
  ListViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Example'),
      ),
      body: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context, index)=>Container(
              width: 200,
              child: Card(
                child: ListTile(
                  title: Text(countryList[index]),
                  leading: Icon(Icons.person),
                ),
              ),
            ),
            itemCount: countryList.length,
        ),
      ),
    );
  }
}
