import 'package:flutter/material.dart';
import 'package:gallery_app/main.dart';
import 'package:gallery_app/images/images.dart';
import 'package:swipe_image_gallery/swipe_image_gallery.dart';

class ScreenMain extends StatelessWidget {
  //static int? selectedPictureIndex = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "GALLERY",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.amber //Colors.deepPurple.shade700,
          ),
      body: GridView.count(
        crossAxisCount: 4,
        children: _buildGrid(Images.images!.length, context),
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  List<Widget> _buildGrid(imageNumber, context) {
    List<Container> containers =
        List<Container>.generate(imageNumber, (int index) {
      return Container(
        child: GestureDetector(
          /*onTap: () {
            selectedPictureIndex = index;
            Navigator.pushNamed(context, "/picture");
          },*/
          onTap: () => SwipeImageGallery(
            initialIndex: index,
            context: context,
            itemBuilder: (context, index) {
              return Image.network(Images.images![index]);
            },
            itemCount: Images.images!.length,
          ).show(),
          child: Container(
              child: Image.network(
            Images.images![index],
            fit: BoxFit.fill,
          )),
        ),
      );
    });

    return containers;
  }
}
