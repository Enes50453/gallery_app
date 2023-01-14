import 'package:flutter/material.dart';
import 'package:gallery_app/screens/screen_main.dart';
import 'package:gallery_app/screens/screen_picture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/gallery": (BuildContext context) => ScreenMain(),
        "/picture": (BuildContext context) => ScreenPicture()
      },
      initialRoute: "/gallery", //açılış sayfası
    );
  }
}

/*class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple.shade700,
      ),
      body: GridView.count(
        crossAxisCount: 4,
        children: _buildGrid(images.length),
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
}

List<Widget> _buildGrid(imageNumber) {
  List<Container> containers =
      new List<Container>.generate(imageNumber, (int index) {
    return new Container(
        child: Image.network(
      images[index],
      fit: BoxFit.fill,
    ));
  });

  return containers;
}*/

final List<String> images = [
  "https://cdn.pixabay.com/photo/2022/10/20/11/26/landscape-7534634_960_720.jpg",
  "https://cdn.pixabay.com/photo/2018/01/12/14/24/night-3078326_960_720.jpg",
  "https://cdn.pixabay.com/photo/2018/03/02/19/21/nature-3194001_960_720.jpg",
  "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/08/11/23/48/mountains-1587287_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/10/22/17/46/mountains-1761292_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/12/15/13/51/polynesia-3021072_960_720.jpg",
  "https://cdn.pixabay.com/photo/2015/01/28/23/35/hills-615429_960_720.jpg",
  "https://cdn.pixabay.com/photo/2015/04/23/22/01/mountains-736886_960_720.jpg",
  "https://cdn.pixabay.com/photo/2014/08/15/11/29/beach-418742_960_720.jpg",
  "https://cdn.pixabay.com/photo/2015/06/19/20/13/sunset-815270_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/05/09/03/46/alberta-2297204_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/11/06/05/36/lake-1802337_960_720.jpg",
  "https://cdn.pixabay.com/photo/2014/01/22/19/44/flower-field-250016_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/05/02/10/13/ship-1366926_960_720.jpg",
  "https://cdn.pixabay.com/photo/2015/07/31/06/50/forest-868715_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/10/10/07/48/hills-2836301_960_720.jpg",
  "https://cdn.pixabay.com/photo/2013/07/25/01/31/forest-166733_960_720.jpg",
  "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_960_720.jpg",
];
/*List<Widget> _buildGrid(imageNumber) {
  List<Container> containers =
      new List<Container>.generate(imageNumber, (int index) {
    final imageName = 'images/image${index < 9 ? '0' : ''}${index + 1}.JPG';
    return new Container(
      child: new Image.asset(
        imageName,
        fit: BoxFit.cover,
      ),
    );
  });

  return containers;
}*/
