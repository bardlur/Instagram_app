import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram/model/enum.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> 
  with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1f2e),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Color(0xff1c1f2e),
              child: TabBar(
                controller: _tabController,
                labelStyle: TextStyle(fontSize: 18, fontFamily: 'GB'),
                indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                indicatorColor: Color(0xfff35383),
                indicatorWeight: 4,
                tabs: [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: 'You',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            'New',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'GB'
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRowYou(ActivityStatus.like);
                        }, childCount: 2),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            'Today',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'GB'
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRowFollowing();
                        }, childCount: 6),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRowYou(ActivityStatus.like);
                        }, childCount: 3),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Text(
                            'This week',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'GB'
                            ),
                          ),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRowFollowing();
                        }, childCount: 2),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return _getRowYou(ActivityStatus.like);
                        }, childCount: 20),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getRowFollowing() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  color: Color(0xfff35383),
                  shape: BoxShape.circle
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/bardlur.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'bardlur',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Started following',
                        style: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 14,
                          color: Color(0xffC5C5C5)
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'you',
                        style: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 14,
                          color: Color(0xffC5C5C5)
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '3 min',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xffF35383),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)
              ),
            ),   
            onPressed: () {}, 
            child: Text(
              'Follow',
            ),
          ),
        ],
      ),
    );
  }

  Widget _getRowYou(ActivityStatus) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 6,
                width: 6,
                decoration: BoxDecoration(
                  color: Color(0xfff35383),
                  shape: BoxShape.circle
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset('images/profile.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'amirahamadadibii',
                        style: TextStyle(
                          fontFamily: 'GB',
                          fontSize: 14,
                          color: Colors.white
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Liked your post',
                        style: TextStyle(
                          fontFamily: 'GM',
                          fontSize: 14,
                          color: Color(0xffC5C5C5)
                        ),
                      )
                    ],
                  ),
                  Text(
                    '7 h',
                    style: TextStyle(
                      fontFamily: 'GB',
                      fontSize: 14,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ],
          ),
          _getActivityStatusRow(ActivityStatus)
        ],
      ),
    );
  }

  Widget _getActivityStatusRow(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.follow: 
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Color(0xffF35383),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
            ),
          ),   
          onPressed: () {}, 
          child: Text(
            'Follow',
          ),
        );
      case ActivityStatus.like:
        return SizedBox(
          width: 40,
          height: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: FittedBox(
              fit: BoxFit.cover,
              child: Image.asset('images/item0.png'),
            ),
          ),
        );
      default: 
      return Container();
    }
  }
}