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
                        color: Colors.yellow,
                        child: Image(
                          image: AssetImage('../../img/billie.jpeg'),
                          width: 375,
                          fit: BoxFit.cover,
                        ),
                      ),
                      new Container(
                        height: 55,
                      ),
                      new Container(
                        color: Colors.red,
                      )
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
                child: Text('Marcus L.', style: TextStyle(fontSize: 20)),
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
            )
          ],
        ),
      ))
    ]));
  }
}
