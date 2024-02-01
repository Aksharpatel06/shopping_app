import 'package:app/utils/Color.dart';
import 'package:app/utils/Text.dart';
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
          body: Column(
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
                        'assect/img/img.png',
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Container(
                  width: 800,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: grey, width: 0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child: Center(
                            child: Text(text3,
                              style: TextStyle(
                                color: black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child:  Center(
                            child: Text(text4,
                              style: const TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: grey, width: 0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child:  Center(
                            child: Text(text5,
                              style:  TextStyle(
                                color: black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: grey, width: 0.5),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          child:  Center(
                            child: Text(
                              text6,
                              style: TextStyle(
                                color: black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(right: 190),
                  height: 50,
                  width: 150,
                  child: Text(text7,style: TextStyle(
                    color: black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(color: black),
                      ),
                      child: Image.asset('assect/img/sale image/img1.png',),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Widget menu({String! name})
// {
//     height: 40,
//     width: 100,
//     decoration: BoxDecoration(
//     border: Border.all(color: Colors.grey,width: 0.5),
//     borderRadius: BorderRadius.all(Radius.circular(40),),
//     ),
//     child: Center(
//       child: Text($name,style: TextStyle(
//     color: Colors.black,
//     ),
//     ),
//     ),
// }
