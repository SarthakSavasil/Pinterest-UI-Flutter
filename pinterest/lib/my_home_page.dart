import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'dart:js' as js;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imageList = [
    'https://media2.giphy.com/media/8QGTPddH9geo4Ty2kK/giphy.webp?cid=ecf05e47gh5f9itiwa9j2n0ij8j5zvdhnxtciq99b1jtc7ka&rid=giphy.webp',
    'https://picsum.photos/200/300?a',
    'https://picsum.photos/200/300?b',
    'https://picsum.photos/200/300?c',
    'https://picsum.photos/200/300?d',
    'https://picsum.photos/200/300?e',
    'https://media3.giphy.com/media/f3CtEsJ72j86DIumaJ/giphy.gif',
    'https://media4.giphy.com/media/3oFzlYX1UTJkviPhra/200w.webp?cid=ecf05e47ink61ezh7tcsiiggpoikwqyz1akkjpwn053namz2&rid=200w.webp',
    'https://picsum.photos/200/300?f',
    'https://picsum.photos/200/300?g',
    'https://picsum.photos/200/300?h',
    'https://media1.giphy.com/media/Lmy23L3RkJ0sEWokRN/giphy.gif',
    'https://picsum.photos/200/300?i',
    'https://picsum.photos/200/300?j',
    'https://picsum.photos/200/300?k',
    'https://picsum.photos/200/300?l',
    'https://picsum.photos/200/300?m',
    'https://picsum.photos/200/300?n',
    'https://picsum.photos/200/300?o',
    'https://picsum.photos/200/300?p',
    'https://picsum.photos/200/300?z',
    'https://media0.giphy.com/media/1wPlBSdWGZS409uWtE/giphy.gif',
    'https://picsum.photos/200/300?q',
    'https://picsum.photos/200/300?r',
    'https://picsum.photos/200/300?s',
    'https://source.unsplash.com/440x720/?a',
    'https://source.unsplash.com/440x720/?b',
    'https://source.unsplash.com/440x720/?c',
    'https://source.unsplash.com/440x720/?D',
    'https://source.unsplash.com/440x720/?e',
    'https://source.unsplash.com/440x720/?f',
  ];
  var isHovering = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
         
          // textTheme: ,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, ),
                  ),
                  style: ButtonStyle(
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    )),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                        
                ),
                
              ),
              Padding(
              padding: const EdgeInsets.all(8.0),
              
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Today",
                    style: TextStyle(color: Colors.black87,),
                    
                  ),
                  style: ButtonStyle(
                     overlayColor: MaterialStateProperty.all(Colors.grey),
                     
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    )
                    ),
                    
                  )
                        
                ),
                
              ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.70,
                height: 30,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      hoverColor: Colors.black26,
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 3, color: Colors.blue),
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              tooltip: 'Notification',
              splashRadius: 20,
              color: Colors.black26,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.comment),
              tooltip: 'Comments',
              splashRadius: 20,
              color: Colors.black26,
              onPressed: () {},
            ), //IconButton
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Settings',
              splashRadius: 20,
              color: Colors.black26,
              onPressed: () {},
            ), //IconButton
          ], //<Widget>[]
          backgroundColor: Colors.white24,
          elevation: 50.0,
          
            leading:Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
              "assets/logo.ico",
              
              alignment: Alignment.center,
          ),
            ),
          brightness: Brightness.light,
        ),
        body: Container(
          margin: EdgeInsets.all(12),
          child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 12,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isHovering[index] = 1;
                      // print(isHovering);
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isHovering[index] = 0;
                      // print(isHovering);
                    });
                  },
                  child: isHovering[index] == 0
                      ? Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: imageList[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.3),
                                      BlendMode.dstATop),
                                  image: NetworkImage(imageList[index])),
                              // color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Container(
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 10,
                                  bottom: 12,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 5),
                                      child: TextButton(
                                        onPressed: () {
                                          js.context.callMethod(
                                              'open', [imageList[index]]);
                                        },
                                        child: Text(
                                          imageList[index].substring(0, 20) +
                                              "....",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: width * 0.01),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 10,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Save",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.blue)),
                                  ),
                                ),
                                Positioned(
                                  right: 60,
                                  bottom: 50,
                                  child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Color(0xffffffee),
                                    child: IconButton(
                                      iconSize: 15,
                                      icon: Icon(Icons.share),
                                      tooltip: 'Share',
                                      color: Colors.blue,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 14,
                                  bottom: 50,
                                  child: CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Color(0xffffffee),
                                    child: IconButton(
                                      iconSize: 18,
                                      icon: Icon(Icons.more_horiz),
                                      tooltip: 'Menu',
                                      color: Colors.blue,
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                );
              },
              staggeredTileBuilder: (index) {
                return StaggeredTile.count(1, index.isEven ? 1.2 : 1.8);
              }),
        ),
      ),
    );
  }
}
