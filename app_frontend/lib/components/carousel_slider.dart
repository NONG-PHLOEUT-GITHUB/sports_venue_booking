import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0), // Adjust margin
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0), // Round corners
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black26,
        //     blurRadius: 6.0,
        //     spreadRadius: 1.0,
        //     offset: Offset(0, 3),
        //   ),
        // ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0), // Clip images to rounded corners
        child: CarouselSlider(
          items: [
            _buildImage("https://www.spized.com/media/75/f7/f8/1680187076/Fu%C3%9Fballfeld.jpg"),
            _buildImage("https://t3.ftcdn.net/jpg/09/28/78/84/360_F_928788438_TyuKTkDqrR3GolJsgbltMcAgOufUAFhu.jpg"),
            _buildImage("https://img.freepik.com/premium-photo/green-grass-soccer-stadium_30824-117.jpg"),
          ],
          options: CarouselOptions(
            height: 140.0,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1.0, // Ensures only one image is visible at a time
          ),
        ),
      ),
    );
  }

  Widget _buildImage(String url) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
