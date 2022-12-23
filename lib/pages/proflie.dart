import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_facebook/model/podcat.dart';
import 'package:iconsax/iconsax.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  final double topWidgetHeight = 200.0;
  final double avatarRadius = 50.0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CustomScrollView(slivers: [
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
              child: Icon(Iconsax.search_normal, color: Colors.black, size: 20),
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
              child: Stack(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Container(
                        height: topWidgetHeight,
                        child: Image(
                          image: AssetImage('../../img/billie.jpeg'),
                          width: 375,
                          fit: BoxFit.cover,
                        ),
                      ),
                      new Container(
                        height: 55,
                      ),
                      new Container()
                    ],
                  ),
                  new Positioned(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage('../../img/eminem.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    left:
                        (MediaQuery.of(context).size.width / 2) - avatarRadius,
                    top: topWidgetHeight - avatarRadius,
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Text('Marcus Lagar',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Container(
                    width: 270,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Add To Story',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    )),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Iconsax.more_circle),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 20, 20),
              child: Container(
                child: Column(
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Icon(Iconsax.home),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Live in New York'),
                        )
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Icon(Iconsax.location),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('From New York'),
                        )
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Icon(Iconsax.more_circle),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('See you About info'),
                        )
                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Container(
                        width: 375,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent.shade200,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Edit Pubilc Details',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Container(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Friends',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('536 friends'),
                              ],
                            ),
                            Spacer(),
                            Text(
                              'Find friends',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
      SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150, childAspectRatio: 0.8),
          delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('../../img/eminem.jpeg'),
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('../../img/eminem.jpeg'),
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('../../img/eminem.jpeg'),
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('../../img/eminem.jpeg'),
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('../../img/eminem.jpeg'),
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: AssetImage('../../img/eminem.jpeg'),
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
          ])),
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    width: 375,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent[200],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'All Friends',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                          child: Text(
                        'Post',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                      Spacer(),
                      Container(
                          child: Text(
                        'Filters',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                image: AssetImage('../../img/eminem.jpeg'),
                                fit: BoxFit.cover,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Container(
                              width: 250,
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Enter your post",
                                        fillColor: Colors.white70),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: Icon(
                          Iconsax.gallery,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}
