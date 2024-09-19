import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final List<String> imageUrls= [
    "assets/images/cofee1.jpeg",
    "assets/images/cofee1.jpeg",
    "assets/images/coffee2.jpeg",
    "assets/images/coffee3.jpeg",
    "assets/images/coffee4.jpeg",
    "assets/images/coffee5.jpeg",

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("carousel slider(Stateless widget)"),
     ),
     body: Column(
      children: [
        CarouselSlider(options: CarouselOptions(
          height: 400,
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 16/9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
          
        ),
        items: imageUrls.map((imageUrl){
         return Container(
            height: 400,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0.5),
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
            child: Image.asset(imageUrl,
            fit: BoxFit.cover,),
          );
          
        }).toList(), 
        ),
      ],
     ),
    );
     
        }
        
        }
        