import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_facebook/model/podcat.dart';
import 'package:iconsax/iconsax.dart';

class friends extends StatelessWidget {
  var num = podcast.length;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Container(
                            child: Text(
                          'Friends',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        )),
                        Spacer(),
                        Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.black12),
                          child: Icon(Iconsax.search_normal,
                              color: Colors.black, size: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(50)),
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Suggestions',
                                style: TextStyle(fontSize: 14),
                              ),
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'All Friends',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Container(
                      child: Row(
                        children: [
                          Container(
                              child: Text(
                            'Friends Requests ($num)',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w100),
                          )),
                          Spacer(),
                          Container(
                              child: Text(
                            'See All',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w100,
                                color: Colors.blueAccent),
                          )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: new AssetImage('../../img/eminem.jpeg'),
                            height: 60.0,
                            width: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Akiko Yaoki',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Confirm',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              )),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Delete',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      child: Text('31W'),
                    )
                  ],
                ),
              ),
            );
          }, childCount: podcast.length))
        ]));
  }
}
