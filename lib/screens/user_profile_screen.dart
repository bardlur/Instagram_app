import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1c1f2e),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, isScrolled) {
              return [
                SliverAppBar(
                  // pinned: true,
                  // toolbarHeight: 40,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, right: 18),
                      child: Icon(Icons.menu),
                    )
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(10),
                    child: Container(
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xff1c1f2e),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)
                        )
                      ),
                    ),
                  ),
                  backgroundColor: Color(0xff1c1f2e),
                  expandedHeight: 200,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.asset(
                      'images/header_profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: _getHeaderProfile(),
                ),
                SliverPersistentHeader(
                  // pinned: true,
                  // floating: true,
                  delegate: TabBarViewDelegate(
                    TabBar(
                      labelStyle: TextStyle(fontSize: 18, fontFamily: 'GB'),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      indicatorColor: Color(0xfff35383),
                      indicatorWeight: 4,
                      tabs: [
                        Image.asset('images/icon_gallery.png'),
                        Image.asset('images/icon_save2.png'),
                      ]
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset('images/item$index.png'),
                              )
                            )
                          );
                        }, 
                          childCount: 10,
                        ), 
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3, 
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: CustomScrollView(
                    slivers: [
                      SliverGrid(
                        delegate: SliverChildBuilderDelegate((context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset('images/item$index.png'),
                              )
                            )
                          );
                        }, 
                          childCount: 10,
                        ), 
                        gridDelegate: SliverQuiltedGridDelegate(
                          crossAxisCount: 3, 
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          repeatPattern: QuiltedGridRepeatPattern.inverted,
                          pattern: [
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(2, 2),
                            QuiltedGridTile(1, 1),
                            QuiltedGridTile(1, 1), 
                            QuiltedGridTile(1, 1),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }

  Widget _getHeaderProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: Color(0xfff35383)
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        child: FittedBox(
                          fit: BoxFit.cover,
                          child: Image.asset('images/bardlur.png'),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'بــردیا خـادمی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SM',
                            fontSize: 14
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'bardlur',
                          style: TextStyle(
                            color: Color(0xffC5C5C5),
                            fontFamily: 'GB',
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image.asset('images/icon_edit.png')
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'برنامه نویس فلاتر و طراح گرافیک',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'SM',
              fontWeight: FontWeight.w400,
              fontSize: 12
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'دانشجوی کارشناسی مهندسی کامپیوتر',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'SM',
              fontWeight: FontWeight.w400,
              fontSize: 12
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset('images/icon_link.png'),
              SizedBox(
                width: 5,
              ),
              Text(
                'github.com/bardlur',
                style: TextStyle(
                  color: Color(0xff55B9F7),
                  fontFamily: 'GB',
                  fontSize: 14
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('images/icon_bag.png'),
              SizedBox(
                width: 5,
              ),
              Text(
                'developer',
                style: TextStyle(
                  color: Color(0xffC5C5C5),
                  fontFamily: 'GB',
                  fontSize: 14
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset('images/icon_location.png'),
              SizedBox(
                width: 5,
              ),
              Text(
                'IRAN',
                style: TextStyle(
                  color: Color(0xffC5C5C5),
                  fontFamily: 'GB',
                  fontSize: 14
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                '10',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GB',
                  fontSize: 18
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Post',
                style: TextStyle(
                  color: Color(0xffC5C5C5),
                  fontFamily: 'GM',
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '194',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GB',
                  fontSize: 18
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Followers',
                style: TextStyle(
                  color: Color(0xffC5C5C5),
                  fontFamily: 'GM',
                  fontSize: 14,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                '300',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'GB',
                  fontSize: 18
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Following',
                style: TextStyle(
                  color: Color(0xffC5C5C5),
                  fontFamily: 'GM',
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TabBarViewDelegate extends SliverPersistentHeaderDelegate{
  TabBarViewDelegate(this._tabBar);
  final TabBar _tabBar;
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 50,
      child: _tabBar,
    );
  }

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }

}