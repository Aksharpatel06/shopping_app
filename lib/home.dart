import 'package:app/utils/Color.dart';
import 'package:app/utils/Popularlist.dart';
import 'package:app/utils/Text.dart';
import 'package:app/utils/salemenu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: white,
            title: Container(
              margin: const EdgeInsets.only(top: 165, left: 1, bottom: 12),
              height: 200,
              width: 200,
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                    text: '$text1\n',
                    style: TextStyle(
                      color:black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  TextSpan(
                      text: text2,
                      style: TextStyle(
                        color: grey,
                        fontSize: 10,
                        height: 2,
                      ))
                ]),
              ),
            ),
            actions: [
              Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(
                    Icons.search_outlined,
                    color:black,
                  )),
              Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(
                    Icons.notifications_active_outlined,
                    color: black,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: grey,
                              blurRadius: 1,
                              spreadRadius: 0.5,
                            ),
                          ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'asset/img/img.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Container(
                      width: 800,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            menu(name:text3),
                            const SizedBox(width: 8),
                            menu(name: text4),
                            const SizedBox(width: 8),
                            menu(name: text5),
                            const SizedBox(width: 8),
                            menu(name: text6),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.only(right: 190),
                      height: 35,
                      width: 150,
                      child: Text(text7,style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: List.generate(sale.length, (index) => saleprodect(name:sale[index]['name'],img: sale[index]['Image'],prize: sale[index]['prize']))
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,top: 8.0),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text('Most Popular',style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Container(
                              height: 28,
                              width: 70,
                              decoration: BoxDecoration(
                                border: Border.all(color: grey,width: 0.2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text('See All',style: TextStyle(
                                  color: black,
                                  fontSize: 15,
                                ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children:
                        List.generate(prodect.length, (index) => popularlist(img: prodect[index]['Image'],name: prodect[index]['name'],num: prodect[index]['prize1'],num1: prodect[index]['prize2'],icon3: prodect[index]['Icon3'],icon4: prodect[index]['Icon4'],rating: prodect[index]['rating']))),
                      Column(
                        children:
                        List.generate(prodect2.length, (index) => popularlist(img: prodect2[index]['Image'],name: prodect2[index]['name'],num: prodect2[index]['prize1'],num1: prodect2[index]['prize2'],icon3: prodect2[index]['Icon3'],icon4: prodect2[index]['Icon4'],rating: prodect2[index]['rating']))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
Widget menu({String? name})
{
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: grey, width: 0.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Center(
        child: Text(name!,
          style: TextStyle(
            color: black,
          ),
        ),
      ),
    );
}
Widget saleprodect({String? img,String? name,double? prize})
{
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 1),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: grey,
                blurRadius: 1,
                spreadRadius: 0.5,
              ),
            ]
        ),
        child: Image.asset('$img',fit: BoxFit.cover,),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Center(
          child: Container(
            height: 70,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '$name\n',style: TextStyle(
                      color: grey,
                    )
                    ),
                    TextSpan(text: '\$ $prize',style: TextStyle(
                      color: black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    ],
  );
}
Widget popularlist({String? img,String?name,double? num,double? num1,IconData? icon4,IconData? icon3,double? rating})
{
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        height: 240,
        width: 175,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: grey,),
          ),
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 130.0,top: 5.0),
              child: Icon(Icons.favorite_outline,color: black,size: 30),
              ),
          Image.asset(img!,height:115,fit: BoxFit.cover,),
          Container(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: '$name\n',style: TextStyle(
                  color: black,
                ),),
                TextSpan(text: '\$ $num',style: TextStyle(
                  color: grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.lineThrough,
                )),
                TextSpan(text: '  \$ $num1',style: TextStyle(
                  color: black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
            ],
          ),
          ),
                ),
          SizedBox(height: 10,),
           Row(
              children: [
                Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 20,),
                Icon(Icons.star,color: Colors.yellowAccent.shade700,size: 20),
                Icon(icon3,color: Colors.yellowAccent.shade700,size: 20),
                Icon(icon4,color: Colors.yellowAccent.shade700,size: 20),
                Icon(Icons.star_border_outlined,color: Colors.yellowAccent.shade700,size: 20),
                Container(
                  child: Text('       \($rating\)',style: TextStyle(
                  color: grey,
                  fontSize: 12,
                ),),
                )
              ]
            ),
          ],
        ),
    ),
  );
}