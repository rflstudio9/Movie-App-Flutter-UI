import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  var dataMovie;
  DetailPage([this.dataMovie]);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.network("${widget.dataMovie['image']}",fit: BoxFit.cover,)),
            Container(
              margin: EdgeInsets.only(top: 290),
              width: MediaQuery.of(context).size.width,
              height: 430,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.9), Colors.black.withOpacity(0.9), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: GlassmorphicContainer(
                            linearGradient: LinearGradient(
                              colors: [Colors.white10, Colors.white10]
                            ),
                            blur: 10,
                            width: 45,
                            height: 45,
                            borderRadius: 12,
                            borderGradient: LinearGradient(
                              colors: [
                                Colors.white10,
                                Colors.white10
                              ]
                            ),
                            border: 1,
                            child: Center(
                              child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 20,),
                            ),
                          ),
                        ),
                        GlassmorphicContainer(
                          linearGradient: LinearGradient(
                            colors: [Colors.white10, Colors.white10]
                          ),
                          blur: 10,
                          width: 45,
                          height: 45,
                          borderRadius: 12,
                          borderGradient: LinearGradient(
                            colors: [
                              Colors.white10,
                              Colors.white10
                            ]
                          ),
                          border: 1,
                          child: Center(
                            child: Icon(Icons.ios_share,color: Colors.white,size: 20,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 320,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("New",style: GoogleFonts.manrope(color: Colors.white.withOpacity(0.75,),fontSize: 20),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(child: Text("${widget.dataMovie['title']}",style: GoogleFonts.manrope(fontSize: 35,fontWeight: FontWeight.w800,color: Colors.white),overflow: TextOverflow.ellipsis,))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10,),
                            Text("${widget.dataMovie['age']}",style: GoogleFonts.manrope(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10,),
                            Text("${widget.dataMovie['genre']}",style: GoogleFonts.manrope(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade800,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 10,),
                            Icon(Icons.star,color: Color(0xffFFEFB218),),
                            SizedBox(width: 5,),
                            Text("${widget.dataMovie['rating']}",style: GoogleFonts.manrope(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('S2 : E1"Episode 1: peaky blinders"',style: GoogleFonts.manrope(color: Colors.white,fontWeight: FontWeight.w500),),
                      Text("40m",style: GoogleFonts.manrope(color: Colors.grey.shade600,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  LinearProgressIndicator(
                    color: Colors.red.shade800,
                    backgroundColor: Colors.grey.shade700,
                    value: 0.3,
                  ),
                  SizedBox(height: 25,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.red.shade800,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("CONTINUE TO WATCH",style: GoogleFonts.manrope(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 18),)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
