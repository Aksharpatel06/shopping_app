import 'package:app/view/Screens/productScreen.dart';
import 'package:flutter/material.dart';

import '../../utils/Color.dart';
import '../../utils/cart.dart';

class lastscreen extends StatefulWidget {
  const lastscreen({super.key});

  @override
  State<lastscreen> createState() => _lastscreenState();
}

class _lastscreenState extends State<lastscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop(context);
              },
              child: Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(left: 14, top: 6.5, bottom: 6.5),
                decoration: BoxDecoration(
                  border: Border.all(color: grey, width: 0.5),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.arrow_back_sharp,
                  color: black,
                ),
              ),
            ),
            title: Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 1,
              ),
            ),
            actions: [
              Container(
                  height: 40,
                  width: 40,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: grey, width: 0.5),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Icon(
                    Icons.more_horiz,
                    color: black,
                  )),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                      children: List.generate(
                          cardlist.length,
                          (index) => cart(
                              name: cardlist[index]['name'],
                              prize: cardlist[index]['prize'],
                              img: cardlist[index]['Image'],
                              index: index))),
                ),
              ),
              Center(
                child: Container(
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '  Total Amount :',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 1.5,
                                wordSpacing: 2),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                count = 0;
                                for (int i = 0; i < cardlist.length; i++) {
                                  count += (cardlist[i]['prize'] *
                                      cardlist[i]['qty']);
                                }
                                if (cardlist.length == 0) {
                                  num = 0;
                                } else {
                                  num = 1;
                                }
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 22.0),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  border: Border.all(color: grey, width: 0.5),
                                ),
                                child: Center(
                                  child: Text('\$',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Prodect Amount :',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade500,
                                letterSpacing: 1.5,
                                wordSpacing: 2),
                          ),
                          Text(
                            '\$ $count',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                letterSpacing: 1.5,
                                wordSpacing: 2),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Delivery Amount :',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey.shade500,
                                letterSpacing: 1.5,
                                wordSpacing: 2),
                          ),
                          (num == 1)
                              ? Text(
                                  '\$ $discount',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      letterSpacing: 1.5,
                                      wordSpacing: 2),
                                )
                              : Text(
                                  '\$ null',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      letterSpacing: 1.5,
                                      wordSpacing: 2),
                                ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(thickness: 0.5),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 82.0),
                            child: Text(
                              'Amount :',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 1.5,
                                  wordSpacing: 2),
                            ),
                          ),
                          (num == 1)
                              ? Text(
                                  '\$ ${count + discount}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      letterSpacing: 1.5,
                                      wordSpacing: 2),
                                )
                              : Text(
                                  '\$ 0.0',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      letterSpacing: 1.5,
                                      wordSpacing: 2),
                                ),
                          // Text('\$ ${count+discount}',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black,letterSpacing: 1.5,wordSpacing: 2),),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 50,
                        width: 350,
                        decoration: BoxDecoration(
                          color: Color(0xff2F3336),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: grey, width: 0.5),
                        ),
                        child: Center(
                          child: (num == 1)
                              ? Text('Pay-\$ ${count + discount}',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ))
                              : Text(
                                  'Pay-\$ 0.0',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget cart({String? img, String? name, double? prize, int? index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: grey, width: 0.5),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(img!),
              ),
            ),
            Column(
              children: [
                Container(
                  width: 220,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 18.0),
                    child: Text(
                      name!,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 145.0),
                  child: Text(
                    '\$ $prize',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 150.0),
                        child: IconButton(
                            onPressed: () {
                              setState(() {
                                cardlist.removeAt(index!);
                              });
                            },
                            icon: Icon(Icons.delete_outline)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 110.0, top: 14.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade200,
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (cardlist[index!]['qty'] > 0) {
                                      cardlist[index!]['qty']--;
                                    }
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 15,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('${cardlist[index!]['qty']}'),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.shade200,
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                            ),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    cardlist[index!]['qty']++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 15,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

double count = 0;
double discount = 20;
int num = 0;
