import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'posts.dart';

// void main() => runApp(MaterialApp(
//       // home: My_App(),
//       routes: {
//         '/' : (context) => Loader(),
//         '/login' : (context) => LoginForm(),
//         '/feeds' : (context) => My_App(),
//       },
//     ));

class My_App extends StatefulWidget {
  @override
  State<My_App> createState() => _My_AppState();
}

class _My_AppState extends State<My_App> {
  // const MyWidget({super.key});
  int likes_count = 0;

  List<Poster> users = [
    Poster('1', 'assets/logo.png', 'Aine', 'Jimson', 'primU'),
    Poster('2', 'assets/logo.png', 'Aine', 'Jimson', 'Kaboy'),
  ];

  List<Post> posts = [
    Post('assets/logo.png', 'Welcome to the world of AI, We roll with you everytime', 'assets/ai2.jpg', '20th March, 2023'),
    Post('assets/logo.png', 'Squid game is back here, join us in cinems', 'assets/squid.jpg', '20th March, 2023'),
    Post('assets/me.jpg', 'The new dark web AI will blow your mind, This piece of craft trained on darkweb content is said to be faster thn gpt-4', 'assets/darkbert.jpg', '20th March, 2023'),
  ];



  Widget PostTemplate(post) {

    return Container(
      color: Colors.black,
      margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Column(
        children: [
          // posts head start
          Container(
            color: Colors.black,
            margin: const EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.asset(
                          post.poster_photo,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                color: Colors.black,
                                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: const Text('',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Container(
                                color: Colors.black,
                                margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: const Text('@primU',
                                    style: TextStyle(
                                      color: Color.fromARGB(223, 187, 182, 182),
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                color: Colors.black,
                                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Text( post.posted,
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(190, 126, 122, 122),
                                        fontWeight: FontWeight.normal)),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // post content start
          Container(
            color: Colors.black,
            margin: const EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  color: Colors.black,
                  child: Text(
                    post.content,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(1),
                  child: Image.asset(
                    post.photo,
                    // width: 100,
                    // height: 100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(1),
                  color: Colors.grey[900],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Likes
                      Expanded(
                        child: Container(
                          // color: Colors.grey[900],
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70)),

                          child: SizedBox(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$likes_count',
                                style: TextStyle(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () => {
                                  setState(() {
                                    likes_count += 1;
                                  }),
                                },
                                icon: const Icon(Icons.thumb_up),
                                color: const Color.fromARGB(255, 0, 255, 8),
                              )
                            ],
                          )),
                        ),
                      ),

                      // Comments
                      Expanded(
                        child: Container(
                          // color: Colors.grey[900],
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70)),
                          child: SizedBox(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () => {},
                                icon: const Icon(Icons.comment),
                                color: Colors.white,
                              )
                            ],
                          )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.grey[900],
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70)),

                          child: SizedBox(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () => {},
                                icon: const Icon(Icons.tag),
                                color: Colors.white,
                              )
                            ],
                          )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.grey[900],
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70)),
                          child: SizedBox(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () => {},
                                icon: const Icon(Icons.link),
                                color: Colors.white,
                              )
                            ],
                          )),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.grey[900],
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70)),
                          child: SizedBox(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                              IconButton(
                                onPressed: () => {},
                                icon: const Icon(Icons.share),
                                color: Colors.white,
                              )
                            ],
                          )),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.home),
              color: const Color.fromARGB(255, 0, 255, 8),
            ),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.movie)),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.book)),
            IconButton(onPressed: () => {}, icon: const Icon(Icons.school)),
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.location_on_rounded)),
          ],
          // IconButton(icon: Icon(Icons.home), onPressed: ()=>{}),
        ),
        backgroundColor: Colors.black,

        // centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      color: Colors.black,
                      child: Image.asset(
                        'assets/primu.png',
                        height: 40,
                        width: 100,
                      ),
                    ),
                    // Expanded(
                    //   child: Container(
                    //     color: Colors.black,
                    //     // padding: const EdgeInsets.all(5),
                    //     child: SizedBox(
                    //       width: 20,
                    //       height: 35,
                    //       child: TextFormField(
                    //         style: const TextStyle(
                    //             color: Color.fromARGB(171, 211, 201, 201),
                    //             backgroundColor: Colors.black),
                    //         decoration: const InputDecoration(
                    //             hintStyle: TextStyle(color: Colors.white),
                    //             // border: RoundedRectangleBorder(
                    //             // borderRadius: BorderRadius.all(3)),
                    //             // icon: Icon(Icons.search),
                    //             // iconColor: Colors.amber,
                    //             fillColor: Colors.black,
                    //             enabledBorder: OutlineInputBorder(
                    //               borderSide:
                    //                   BorderSide(color: Colors.white, width: 2),
                    //             ),
                    //             hintText: 'Search in primU'),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Container(
                      padding: const EdgeInsets.all(5),
                      color: Colors.black,
                      child: IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.search),
                        color: Colors.amber,
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.all(5),
                      color: Colors.black,
                      child: IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.menu),
                        color: Colors.white,
                      ),
                    ),


                  ],
                ),
              ),
            ),

            // posts

            Column(
              children: posts.map((post) => PostTemplate(post)).toList(),
            )
            // Positioned(
            //   top: -5,
            //   left: 0,
            //   child: Container(
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.stretch,
            //       children: [
            //         IconButton(onPressed: ()=>{}, icon: const Icon(Icons.home)),
            //         IconButton(onPressed: ()=>{}, icon: const Icon(Icons.home)),
            //         IconButton(onPressed: ()=>{}, icon: const Icon(Icons.home)),
            //       ]),
            //   ),
            // ),
          ],
        ),
      ),
      backgroundColor: Colors.black12,
    );
  }
}
