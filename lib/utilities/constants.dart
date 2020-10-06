import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextInput = InputDecoration(
  hintText: 'search any city name ? ',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  focusColor: Colors.grey,
  filled: true,
  fillColor: Colors.white,
  prefixIcon: Icon(
    Icons.place,
    color: Colors.red,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
    borderSide: BorderSide.none,
  ),
);
