import 'package:flutter/material.dart';
import 'package:gallery_app/main.dart';
import 'package:gallery_app/screens/screen_main.dart';

/*class ScreenPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onPanUpdate: ((details) {
            if (details.delta.dx > 0) {}

            ///swipe right
            if (details.delta.dx > 0) {}

            ///swipe left
          }),
          child: Container(
            child: Image.network(
              images[ScreenMain.selectedPictureIndex!],
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/gallery"),
        tooltip: 'Back to gallery',
        child: const Icon(
          Icons.image,
          color: Colors.grey,
        ),
        backgroundColor: Colors.deepPurple.shade700,
      ),
    );
  }
}*/
//////////////////////////////////
///

class ScreenPicture extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ScreenPicture();
  }
}

class _ScreenPicture extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: showPicture(),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/gallery"),
        tooltip: 'Back to gallery',
        child: const Icon(
          Icons.image,
          color: Colors.grey,
        ),
        backgroundColor: Colors.deepPurple.shade700,
      ),
    );
  }

  Widget showPicture() {
    return Center(
      child: GestureDetector(
        onPanUpdate: ((details) {
          if (details.delta.dx > 0) {
            setState(() {
              if (ScreenMain.selectedPictureIndex! < images.length) {
                ScreenMain.selectedPictureIndex =
                    ScreenMain.selectedPictureIndex! + 1;
                showPicture();
              } else {
                ScreenMain.selectedPictureIndex = 0;
                showPicture();
              }
              print("swiped right");
            });
          }

          ///swipe right
          if (details.delta.dx > 0) {
            setState(() {
              if (ScreenMain.selectedPictureIndex! > 0) {
                ScreenMain.selectedPictureIndex =
                    ScreenMain.selectedPictureIndex! - 1;
                showPicture();
              } else {
                ScreenMain.selectedPictureIndex = images.length;
                showPicture();
              }
              print("swiped left");
            });
          }

          ///swipe left
        }),
        child: Container(
          child: Image.network(
            images[ScreenMain.selectedPictureIndex!],
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
