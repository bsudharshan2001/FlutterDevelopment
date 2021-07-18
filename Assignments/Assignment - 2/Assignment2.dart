import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyAssignment(),
  )
  );
}

class MyAssignment extends StatelessWidget{
  const MyAssignment({Key? key}) : super(key: key);
  Widget portrait()
  {
    return SafeArea(
      child: Center(
        child: Column(
           children: [
             Expanded(
               child: Container(
                 child: Image(
                   image: AssetImage('images/perfect.jpg'),
                   fit: BoxFit.cover,
                 ),
               ),
             ),
             Expanded(
               child: Container(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Padding(
                             padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                             child: Text(
                               'Perfect Perfume',
                               style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 fontFamily: 'Pacifico'
                               ),
                             ),
                           ),
                           Column(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.all(0.5),
                                 child: Text(
                                   '55% off',
                                   style: TextStyle(
                                       fontSize: 14,
                                       fontWeight: FontWeight.bold,
                                       color: Colors.green),
                                 ),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(0.5),
                                 child: Text(
                                   '£95',
                                   style: TextStyle(
                                     fontSize: 17,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               )
                             ],
                           )
                         ],
                       ),

                       ButtonBar(
                         mainAxisSize: MainAxisSize.min,
                         children: [
                          TextButton(onPressed: (){}, child: Text('200 ml',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                          ),),
                           TextButton(onPressed: (){}, child: Text('100 ml',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                           ),)
                         ],
                       ),
                       Card(
                         elevation: 10,
                         margin:EdgeInsets.fromLTRB(1, 1, 1, 1),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.stretch,
                           children: [
                             Padding(
                               padding: const EdgeInsets.fromLTRB(4, 3, 4, 3),
                               child: Text('Cash on delivery option availability, only VISA, MASTERCARD',textAlign: TextAlign.center,style: TextStyle(
                                 fontWeight: FontWeight.bold
                               ), )
                             ),
                             Padding(
                               padding: const EdgeInsets.fromLTRB(4, 3, 4, 3),
                               child: Text('Return the shipment within 30 days from purchase',textAlign: TextAlign.center,style: TextStyle(
                                 fontWeight: FontWeight.bold
                               ),)
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(6.0),
                         child: Center(
                           child: Text(
                             'Product Details',
                             style: TextStyle(color: Colors.blueAccent, fontSize: 15,fontWeight: FontWeight.w400,fontFamily: 'Pacifico',decoration: TextDecoration.underline ),
                           ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(7,4,2,2),
                         child:
                             Text('Nice and Fresh aroma, Get your macho on with the strong fragrance ',style: TextStyle(fontSize: 12.75),textAlign: TextAlign.center)
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(7,4,2,2),
                         child:
                             Text('Perfume made from real mineral extracts, Infused with the scents of the sea and the zing of citrus ',style: TextStyle(fontSize: 12.75),textAlign: TextAlign.center,)
                       ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(7,4,2,2),
                         child:
                             Text('Use this perfume for long-lasting freshness and energy to go strong, day & night',style: TextStyle(fontSize: 12.75),textAlign: TextAlign.center,)
                       )
                     ],
                   )
               ),
             ),
             Card(
               margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
               elevation: 10,
               child: Expanded(
                 flex: 1,
                 child: Container(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       IconButton(
                         icon: Icon(
                           Icons.color_lens,
                           color: Colors.blue,
                         ),
                         onPressed: () {},
                       ),
                       TextButton(onPressed: (){}, child: Text('Add to cart',style: TextStyle(fontFamily: 'lobster',color: Colors.white),),style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                       ),),
                       IconButton(
                         icon: Icon(
                           Icons.favorite_border,
                           color: Colors.red,
                         ),
                         onPressed: () {},
                       ),
                     ],
                   ),
                 ),
               ),
             )
           ],
        ),
      ),
    );
  }
  Widget landscape()
  {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Image(
                  image: AssetImage('images/perfect.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                            child: Text(
                              'Perfect Perfume',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Pacifico'
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.5),
                                child: Text(
                                  '55% off',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.5),
                                child: Text(
                                  '£95',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                      ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton(onPressed: (){}, child: Text('200 ml',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                          ),),
                          TextButton(onPressed: (){}, child: Text('100 ml',style: TextStyle(color: Colors.white),),style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                          ),)
                        ],
                      ),
                      Card(
                        elevation: 10,
                        margin:EdgeInsets.fromLTRB(1, 1, 1, 1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                                padding: const EdgeInsets.fromLTRB(4, 3, 4, 3),
                                child: Text('Cash on delivery option availability, only VISA, MASTERCARD',textAlign: TextAlign.center,style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ), )
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(4, 3, 4, 3),
                                child: Text('Return the shipment within 30 days from purchase',textAlign: TextAlign.center,style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),)
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Center(
                          child: Text(
                            'Product Details',
                            style: TextStyle(color: Colors.blueAccent, fontSize: 15,fontWeight: FontWeight.w400,fontFamily: 'Pacifico',decoration: TextDecoration.underline ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(7,4,2,2),
                          child:
                          Text('Nice and Fresh aroma, Get your macho on with the strong fragrance ',style: TextStyle(fontSize: 12.75),textAlign: TextAlign.center)
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(7,4,2,2),
                          child:
                          Text('Perfume made from real mineral extracts, Infused with the scents of the sea and the zing of citrus ',style: TextStyle(fontSize: 12.75),textAlign: TextAlign.center,)
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(7,4,2,2),
                          child:
                          Text('Use this perfume for long-lasting freshness and energy to go strong, day & night',style: TextStyle(fontSize: 12.75),textAlign: TextAlign.center,)
                      )
                    ],
                  )
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(0, 2, 0, 0),
              elevation: 10,
              child: Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.color_lens,
                          color: Colors.blue,
                        ),
                        onPressed: () {},
                      ),
                      TextButton(onPressed: (){}, child: Text('Add to cart',style: TextStyle(fontFamily: 'lobster',color: Colors.white),),style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent)
                      ),),
                      IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
          appBar: AppBar(
            elevation: 10,
            shadowColor: Colors.blue,
            centerTitle: true,
            title: Text("Perfume",
              style: TextStyle(
                  fontFamily: 'Lobster',
                  color: Colors.white
              ) ,
            ),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.lightBlueAccent,
                  Colors.lightBlue,
                  Colors.blue,
                  Colors.blueAccent
                ],
                begin: Alignment.bottomRight,
                  end: Alignment.topLeft)),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){},
            ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart_rounded))
            ],
          ),
          backgroundColor: Colors.white,
          body: OrientationBuilder(
            builder: (context,orientation){
              if(orientation==Orientation.portrait)
                {
                  return portrait();
                }
              else{
                return landscape();
              }
            },
          )
    );
  }
}