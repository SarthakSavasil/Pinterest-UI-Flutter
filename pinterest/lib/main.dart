import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'my_home_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blue,
            ),
            
            home: MyHomePage(),
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<String> imageList = [
//     'https://media2.giphy.com/media/8QGTPddH9geo4Ty2kK/giphy.webp?cid=ecf05e47gh5f9itiwa9j2n0ij8j5zvdhnxtciq99b1jtc7ka&rid=giphy.webp',
//     'https://picsum.photos/200/300?a',
//     'https://picsum.photos/200/300?b',
//     'https://picsum.photos/200/300?c',
//     'https://picsum.photos/200/300?d',
//     'https://picsum.photos/200/300?e',
//     'https://media3.giphy.com/media/f3CtEsJ72j86DIumaJ/giphy.gif',
//     'https://media4.giphy.com/media/3oFzlYX1UTJkviPhra/200w.webp?cid=ecf05e47ink61ezh7tcsiiggpoikwqyz1akkjpwn053namz2&rid=200w.webp',
//     'https://picsum.photos/200/300?f',
//     'https://picsum.photos/200/300?g',
//     'https://picsum.photos/200/300?h',
//     'https://media1.giphy.com/media/Lmy23L3RkJ0sEWokRN/giphy.gif',
//     'https://picsum.photos/200/300?i',
//     'https://picsum.photos/200/300?j',
//     'https://picsum.photos/200/300?k',
//     'https://picsum.photos/200/300?l',
//     'https://picsum.photos/200/300?m',
//     'https://picsum.photos/200/300?n',
//     'https://picsum.photos/200/300?o',
//     'https://picsum.photos/200/300?o',
//     'https://picsum.photos/200/300?p',
//     'https://media0.giphy.com/media/1wPlBSdWGZS409uWtE/giphy.gif',
//     'https://picsum.photos/200/300?q',
//     'https://picsum.photos/200/300?r',
//     'https://picsum.photos/200/300?s',
//     'https://source.unsplash.com/440x720/?a',
//     'https://source.unsplash.com/440x720/?b',
//     'https://source.unsplash.com/440x720/?c',
//     'https://source.unsplash.com/440x720/?D',
//     'https://source.unsplash.com/440x720/?e',
//     'https://source.unsplash.com/440x720/?f',
//     ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white24,
//         appBar: AppBar(
//           title: Text("Flutter Staggered GridView Demo"),
//           centerTitle: true,
//           automaticallyImplyLeading: false,
//         ),
//         body: Container(
//           margin: EdgeInsets.all(12),
//           child:  StaggeredGridView.countBuilder(
//               crossAxisCount: 4,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 12,
//               itemCount: imageList.length,
              
//               itemBuilder: (context, index) {
//                 return Container(
//                   decoration: BoxDecoration(
                      
//                       color: Colors.transparent,
//                       borderRadius: BorderRadius.all(
//                           Radius.circular(15))
//                   ),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.all(
//                         Radius.circular(15)),
//                     child: FadeInImage.memoryNetwork(
//                       placeholder: kTransparentImage,
//                       image: imageList[index],fit: BoxFit.cover,),
//                   ),
//                 );
//               },
//               staggeredTileBuilder: (index) {
//                 return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
//               }),
//         ),
//       ),
//     );
//   }
// }



