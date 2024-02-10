import 'package:flutter/material.dart';
import 'package:instagram/screens/share_bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1c1f2e),
        title: Container(
          height: 24,
          width: 128,
          child: Image.asset('images/moodinger_logo.png'),
        ),
        actions: [
          Container(
            height: 24,
            width: 24,
            margin: EdgeInsets.only(right: 16),
            child: Image.asset('images/icon_direct.png'),
          ),
        ],
      ),
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getStoryList(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return _getPost();
                },
                childCount: 2
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget _getStoryList() {
    return Padding(
      padding: const EdgeInsets.only(left: 17),
      child: Container(
        height: 120,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return index == 0 ? _getAddStory() : _getStoryBox();
          },
        ),
      ),
    );
  }

  Widget _getStoryBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17)),
              color: Color(0xffF35383)
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.5),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xff1C1F2E),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset(
                        'images/bardlur.png'
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'bardlur',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GM',
              fontSize: 13
            ),
          )
        ],
      ),
    );
  }

  Widget _getAddStory() {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Column(
        children: [
          Container(
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17)),
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xff1C1F2E),
                ),
                child: Image.asset(
                  'images/icon_plus.png'
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your Story',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GM',
              fontSize: 13
            ),
          ),
        ],
      ),
    );
  }

  Widget _getPost() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(17, 0, 17, 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color(0xffF35383)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff1C1F2E),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(13)),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                              child: Image.asset(
                                'images/bardlur.png'
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'bardlur',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'GB'
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'توسعه دهنده موبایل | بردیا خادمی',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SM',
                            fontSize: 12
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Image.asset('images/icon_menu.png'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Image.asset('images/post2.png'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.asset('images/icon_hart.png'),
                  ),
                  Text(
                    '584 K',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'GB'
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                    right: 5,
                  ),
                    child: Image.asset('images/icon_comments.png'),
                  ),
                  Text(
                    '43.2 K',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'GB'
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25,
                      right: 5
                    ),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                          barrierColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          isScrollControlled: true,
                          context: context, 
                          builder: (BuildContext context) {
                            return Padding(
                              padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).viewInsets.bottom
                              ),
                              child: DraggableScrollableSheet(
                                expand: false,
                                maxChildSize: 0.7,
                                initialChildSize: 0.6,
                                minChildSize: 0.5,  
                                builder: (context, controler) {
                                  return ShareBottomSheet(controller: controler,);
                                }
                              ),
                            );
                          }
                        );
                      },
                    child: Image.asset('images/icon_share.png')),
                  ),
                  Text(
                    '113 K',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'GB',
                      fontSize: 14
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25
                    ),
                    child: Image.asset('images/icon_save.png'),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}


