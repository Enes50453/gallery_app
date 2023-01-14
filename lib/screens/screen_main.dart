import 'package:flutter/material.dart';
import 'package:gallery_app/main.dart';

class ScreenMain extends StatelessWidget {
  static int? selectedPictureIndex = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "GALLERY",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple.shade700,
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: _buildGrid(images.length, context),
        scrollDirection: Axis.horizontal,
      ),
      /*GridView.extent(
        maxCrossAxisExtent: 330.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGrid(20),
      ),*/
    );
  }

  List<Widget> _buildGrid(imageNumber, context) {
    List<Container> containers =
        List<Container>.generate(imageNumber, (int index) {
      return Container(
        child: GestureDetector(
          onTap: () {
            selectedPictureIndex = index;
            Navigator.pushNamed(context, "/picture");
          },
          child: Container(
              child: Image.network(
            images[index],
            fit: BoxFit.fill,
          )),
        ),
      );
    });

    return containers;
  }
}
