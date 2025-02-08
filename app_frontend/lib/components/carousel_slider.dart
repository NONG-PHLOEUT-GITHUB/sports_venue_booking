import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://www.spized.com/media/75/f7/f8/1680187076/Fu%C3%9Fballfeld.jpg"), // Replace with actual URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://t3.ftcdn.net/jpg/09/28/78/84/360_F_928788438_TyuKTkDqrR3GolJsgbltMcAgOufUAFhu.jpg"), // Replace with actual URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://img.freepik.com/premium-photo/green-grass-soccer-stadium_30824-117.jpg"), // Replace with actual URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/036/730/855/small_2x/ai-generated-green-soccer-field-with-sun-shining-through-on-yellow-grass-free-photo.jpg"), // Replace with actual URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://en.reformsports.com/oxegrebi/2023/07/why-do-they-sprinkle-football-pitches.jpg"), // Replace with actual URL
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 140.0,
              // enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              // enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
