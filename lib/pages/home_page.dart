import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List dataMovie = [
    {
      "image": "https://upload.wikimedia.org/wikipedia/id/5/54/The_Batman_%28film%29_poster.jpeg",
      "title": "The Batman",
      "genre": "Action",
      "age": "13+",
      "rating": "10.0",
    },
    {
      "image": "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/08/03/1363211994.jpg",
      "title": "Money Heist",
      "genre": "Crime",
      "age": "18+",
      "rating": "8.2",
    },
    {
      "image": "https://awsimages.detik.net.id/community/media/visual/2022/05/25/film-interstellar-1_43.png?w=700&q=90",
      "title": "Interstellar",
      "genre": "Adventure",
      "age": "R",
      "rating": "8.6",
    },
    {
      "image": "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/2629bad87568290e63a1f62e81fd2d9bf3703268cdbc6ff38a02a6c5de0f0e29._RI_V_TTW_.jpg",
      "title": "Avengers: Infinity War",
      "genre": "Sci:Fi",
      "age": "13+",
      "rating": "8.4",
    },
    {
      "image": "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/e60d59103015959.5f43f7d599ad9.jpg",
      "title": "Peaky Blinders",
      "genre": "Crime",
      "age": "18+",
      "rating": "8.8",
    },
  ];

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    SizedBox(height: 8,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("NetTix",style: GoogleFonts.manrope(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
                          Icon(Icons.airplay_rounded,color: Colors.red.shade800,size: 25,)
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: PageView(
                        controller: _controller,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:NetworkImage("https://www.cultura.id/wp-content/uploads/2022/06/stranger-things-season-4-vol-1-review.webp"),
                                fit: BoxFit.cover
                            ),
                              borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 13,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("NEW SEASON",style: GoogleFonts.manrope(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 100,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Text("Stranger",style: GoogleFonts.manrope(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w800),)
                                ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Things",style: GoogleFonts.manrope(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w400),)
                                  ],),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    SizedBox(width: 15,),
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.grey.withOpacity(0.6)
                                      ),
                                      child: Center(
                                        child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 35,),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Play now",style: GoogleFonts.manrope(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:NetworkImage("https://www.cultura.id/wp-content/uploads/2022/06/stranger-things-season-4-vol-1-review.webp"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 13,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("NEW SEASON",style: GoogleFonts.manrope(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 100,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Stranger",style: GoogleFonts.manrope(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w800),)
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Things",style: GoogleFonts.manrope(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w400),)
                                  ],),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    SizedBox(width: 15,),
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey.withOpacity(0.6)
                                      ),
                                      child: Center(
                                        child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 35,),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Play now",style: GoogleFonts.manrope(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:NetworkImage("https://www.cultura.id/wp-content/uploads/2022/06/stranger-things-season-4-vol-1-review.webp"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 13,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("NEW SEASON",style: GoogleFonts.manrope(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 100,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Stranger",style: GoogleFonts.manrope(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w800),)
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Things",style: GoogleFonts.manrope(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w400),)
                                  ],),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    SizedBox(width: 15,),
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey.withOpacity(0.6)
                                      ),
                                      child: Center(
                                        child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 35,),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Play now",style: GoogleFonts.manrope(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:NetworkImage("https://www.cultura.id/wp-content/uploads/2022/06/stranger-things-season-4-vol-1-review.webp"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 13,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("NEW SEASON",style: GoogleFonts.manrope(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w600),)
                                  ],
                                ),
                                SizedBox(height: 100,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Stranger",style: GoogleFonts.manrope(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w800),)
                                  ],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Things",style: GoogleFonts.manrope(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w400),)
                                  ],),
                                SizedBox(height: 5,),
                                Row(
                                  children: [
                                    SizedBox(width: 15,),
                                    Container(
                                      width: 45,
                                      height: 45,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey.withOpacity(0.6)
                                      ),
                                      child: Center(
                                        child: Icon(Icons.play_arrow_rounded,color: Colors.white,size: 35,),
                                      ),
                                    ),
                                    SizedBox(width: 5,),
                                    Text("Play now",style: GoogleFonts.manrope(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    SmoothPageIndicator(
                      controller: _controller,
                      count: 4,
                      effect: ExpandingDotsEffect(
                        activeDotColor: Colors.red.shade800,
                        dotColor: Colors.grey.shade800,
                        dotHeight: 6,
                        dotWidth: 8,
                        spacing: 2,
                      ),),
                    SizedBox(height: 20,),
                    Container(
                      margin: EdgeInsets.only(left: 15,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Continue Watching",style: GoogleFonts.manrope(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),),
                          IconButton(onPressed:(){}, icon: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.red.shade800,size: 25,))
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: GridView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            childAspectRatio: 2/1.7
                          ),
                          itemCount: dataMovie.length,
                          itemBuilder: (context, index) {
                           return GestureDetector(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(dataMovie[index])));
                             },
                             child: Container(
                               width: 100,
                               height: 200,
                               margin: EdgeInsets.only(left: 10, right: 5),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                     width: MediaQuery.of(context).size.width,
                                       height: 155,
                                       decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(8)
                                       ),
                                       child: ClipRRect(borderRadius: BorderRadius.circular(8),child: Image.network("${dataMovie[index]['image']}",fit: BoxFit.cover,))),
                                   SizedBox(height: 10,),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.start,
                                     children: [
                                       Text("${dataMovie[index]['title']}",style: GoogleFonts.manrope(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                                     ],
                                   ),
                                   SizedBox(height: 10,),
                                   LinearProgressIndicator(
                                     color: Colors.red.shade800,
                                     backgroundColor: Colors.grey.shade800,
                                     value: 0.4,
                                   )
                                 ],
                               ),
                             ),
                           ) ;
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
