  import 'package:bookeep/ReusableWidget.dart';
  // import 'package:bookeep/horizontal_list.dart';
  // import 'package:bookeep/icon_contents.dart';
  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/rendering.dart';
  import 'package:flutter/widgets.dart';
  import 'constants.dart';
  // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

  class InputPage extends StatefulWidget {
    @override
    _InputPageState createState() => _InputPageState();
  }

  class _InputPageState extends State<InputPage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              'Dashboard',
              style: TextStyle(color: Colors.black),
            ),
            leading: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            actions: [
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
              )
            ],
            backgroundColor: Colors.white,
          ),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 15.0,
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: kBorderColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              height: 30.0,
              width: 156.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.business_rounded),
                  Text('JD Distributors'),
                  DropdownButton(items: null)
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'John Smith!',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(
                'Here are your business stats',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 30.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xffBFBFBF)),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kBackgroundColor,
                      cardChild: Column(
                        children: [
                          Text(
                            'Income this week',
                            style: kLabelTextStyle,
                          ),
                          Row(children: [
                            Text(
                              '\$275.43',
                              style: kNumberTextStyle,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ]),
                          Text(
                            '+20% increase',
                            style: kNumberTextStyle2,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kBackgroundColor,
                      cardChild: Column(
                        children: [
                          Text(
                            'Expenses this week',
                            style: kLabelTextStyle,
                          ),
                          Row(
                            children: [
                              Text(
                                '\$160.32',
                                style: kNumberTextStyle,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                              ),
                              Text(
                                '+0.3% increase',
                                style: kNumberTextStyle3,
                              ),
                            ]),
                        ]),
                    ),
                  ),
                ]),
            ),
            SizedBox(height: 10.0,),
            Expanded(
                child: ReusableCard(
              colour: kActiveColor,
              cardChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/Vector.png'),
                  Column(
                    children: [
                      Text('Keep it up!',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                      ),
                      RichText(
                        text: TextSpan(
                          text:'You\'ve made a',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(text: 'profit', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'of:')
                          ],
                        ),
                      ),
                      Text('\$115.11',
                        style:kNumberTextStyle,
                      ),
                      Text('this week',
                      style: TextStyle(
                        color: kPrimaryColor
                      ),
                      )
                    ]),
                    ]),
              ),
            ),
  SizedBox(height: 10.0,),

  Expanded(
    child: Container(
      height:190.0 ,
      width:328.0 ,
      color: kBackgroundColor,
        child:Text('Total Income  & Expenses this week',
        style: kChartTextStyle,
        ),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  )
          ])
      );
    }
  }