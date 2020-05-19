import 'package:flutter/material.dart';
import 'package:homebox/screens/Vendors.dart';

Container detailsContainer(BuildContext context, img, price, name, vendors) {
  return Container(
    margin: EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width,
    height: (MediaQuery.of(context).size.height / 2.25),
    child: Wrap(
      children: <Widget>[
        Center(child: Image.asset('$img')),
        SizedBox(
          height: 0.0,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '$name',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20.0),
              ),
              Text(
                '$price',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 20.0),
              ),
            ],
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Vendor()));
            },
            child: SizedBox(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Vendors...',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.0,
                        color: Colors.green,
                      ))
                ],
              ),
            )),
      ],
    ),
  );
}
