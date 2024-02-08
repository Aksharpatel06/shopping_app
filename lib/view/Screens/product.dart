import 'package:flutter/material.dart';

import '../../utils/Color.dart';
import '../../utils/salemenu.dart';
import '../../utils/size.dart';


class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _appState();
}

int saleindex=0;


class _appState extends State<product> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop(context);
              },
              child: Icon(
                Icons.arrow_back_sharp,
                size: 25,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Icon(Icons.shopping_bag_outlined),
              ),
            ],
            backgroundColor: Colors.grey.shade200,
          ),
          body: Center(
            child: Column(
              children: [
                Container(
                  height: 310,
                  width: double.infinity,
                  child: Image.asset(sale[saleindex]['Image'],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 170),
                      height: 8,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16.8,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11,
                        ),
                        Center(
                            child: Text(
                              sale[saleindex]['name'],
                          style: TextStyle(
                              fontSize: 18,
                              wordSpacing: 2,
                              fontWeight: FontWeight.w500),
                        )),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star_rounded,
                                  size: 32,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 2),
                                Padding(
                                  padding: const EdgeInsets.only(top: 1.0),
                                  child: Text(
                                    '${sale[saleindex]['star']}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2.0),
                                  child: Text(
                                    '(${sale[saleindex]['public']})',
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                ),
                                SizedBox(width: 146),
                                Text('\$ ${sale[saleindex]['prize']}',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 0.5,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(right: 240.0),
                          child: Text(
                            'Available size',
                            style:
                                TextStyle(color: Colors.black45, fontSize: 13),
                          ),
                        ),
                        Row(
                          children:List.generate(sizelist.length, (index) =>  size( size: sizelist[index]['size'],color: sizelist[index]['color']))
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 300.0,),
                          child: Text(
                            'Color',
                            style:
                            TextStyle(color: Colors.black45, fontSize: 13),
                          ),
                        ),
                        Row(
                            children:List.generate(colorlist.length, (index) =>  color(color: colorlist[index]['colors']))
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Container(
                          height: 50,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Color(0xff2F3336),
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: grey, width: 0.5),
                          ),
                          child: Center(child: Text('Add to cart',style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),)),
                        ),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(left: 22.0),
                       child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: grey, width: 0.5),
                          ),
                          child: Icon(Icons.shopping_cart)
                        ),
                     ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget size({int? size, Color? color}) {
  return Padding(
    padding: const EdgeInsets.only(top:8.0, right: 5.0, left: 5.0),
    child: Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(child: Text('$size', style: TextStyle(fontSize: 11))),
    ),
  );
}

Widget color({Color? color}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8.0, right: 5.0, left: 5.0),
    child: Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        color: color,
        shape: BoxShape.circle,
      ),
    ),
  );
}
