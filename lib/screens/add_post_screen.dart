import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            _getScrollingScreen(),
            Container(
              height: 83,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 33, 34, 37),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Draft',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'GB',
                            color: Color(0xffF35383)
                          ),
                        ),
                        Text(
                          'Gallery',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'GB',
                            color: Colors.white
                          ),
                        ),
                        Text(
                          'Take',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'GB',
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _getScrollingScreen() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _getHeader(),
          ),
          SliverToBoxAdapter(
            child: _getSelectedImage(),
          ),
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
    );
  }

  Widget _getSelectedImage() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      height: 394,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15)
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        child: Image.asset('images/post2.png'),
      ),
    );
  }

  Widget _getHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'GB',
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset('images/icon_bottom.png')
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'GB',
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                  ),
                  child: Container(
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: Color(0xff1C1F2E)
                    ),
                    child: Image.asset('images/icon_right.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}