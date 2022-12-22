import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_facebook/model/podcat.dart';
import 'package:iconsax/iconsax.dart';

class notifications extends StatelessWidget {
  const notifications({super.key});

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
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'New',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
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
                          child: Text(
                            'Akiko Yaoki',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          width: 210,
                          child: Column(
                            children: [
                              Text(
                                  'has a new post from Liana MBN on Saturday : im Live now Shayeb Yeeaaay Yrsterday at 28 PM')
                            ],
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Icon(Iconsax.more_circle),
                    )
                  ],
                ),
              ),
            );
          }, childCount: podcast.length))
        ]));
  }
}
