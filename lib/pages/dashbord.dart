import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_facebook/model/podcat.dart';
import 'package:iconsax/iconsax.dart';

int count = 0;

class dashbord extends StatelessWidget {
  const dashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.white,
            title: Text(
              'Facebook',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.w900),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 50,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black12),
                  child: Icon(Iconsax.search_normal,
                      color: Colors.black, size: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: 50,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black12),
                  child: Icon(
                    Iconsax.message_notif,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
            // actions: [Icon(Icons.sha)],
          ),
          SliverToBoxAdapter(
              child: Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image(
                              image: AssetImage('../../img/eminem.jpeg'),
                              width: 20,
                              height: 20,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  filled: true,
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: "Enter your post",
                                  fillColor: Colors.white70),
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Iconsax.camera,
                                color: Colors.red,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Live'),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Iconsax.gallery,
                                color: Colors.green,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Photo'),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Iconsax.video,
                                color: Colors.purple,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Room'),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
          SliverToBoxAdapter(
              child: SizedBox(
                  height: 200.0,
                  width: 90,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: podcast.length,
                      itemBuilder: (context, i) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                new Stack(
                                  children: [
                                    Column(
                                      children: [
                                        new Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          margin: new EdgeInsets.symmetric(
                                              vertical: 10.0),
                                          alignment:
                                              FractionalOffset.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Stack(
                                                children: [
                                                  new Image(
                                                    image: new AssetImage(
                                                        '../../img/eminem.jpeg'),
                                                    height: 130.0,
                                                    width: 90,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  Container(
                                                    child: Align(
                                                      alignment:
                                                          FractionalOffset
                                                              .bottomCenter,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                20, 100, 0, 0),
                                                        child: Text(
                                                          'name ',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w100),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          10, 10, 0, 0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        child: Container(
                                                          decoration: BoxDecoration(
                                                              border: Border.all(
                                                                  width: 2,
                                                                  color: Colors
                                                                      .blueAccent),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100)),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        100),
                                                            child: new Image(
                                                              image: new AssetImage(
                                                                  '../../img/eminem.jpeg'),
                                                              height: 30.0,
                                                              width: 30,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }))),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                child: Container(
                    child: Center(
                        child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                image: new AssetImage('../../img/eminem.jpeg'),
                                height: 40.0,
                                width: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Josh Wincherter',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Text(
                                    'Jun 12 2023 3D Ago',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w100),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(Iconsax.more_circle),
                        )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            "UI Kit can be useful for getting started in Json, designing Clean Ui App, Social networking apps, shopping apps and more."),
                      ),
                    ),
                    Container(
                      child: Image(
                        image: new AssetImage('../../img/eminem.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Iconsax.heart,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Iconsax.dislike,
                                    color: Colors.black,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    child: Text(' $count K'),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Text('421 Comments'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Iconsax.heart),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Like'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Iconsax.message),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Command'),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Iconsax.share),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Share'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ))),
              );
            }, childCount: 9),
          ),
        ],
      ),
    );
  }
}

class countheart extends StatefulWidget {
  const countheart({super.key});

  @override
  State<countheart> createState() => _countheartState();
}

class _countheartState extends State<countheart> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          count += 10;
        });
      },
      icon: Icon(
        Iconsax.heart,
        color: Colors.red,
      ),
    );
  }
}
