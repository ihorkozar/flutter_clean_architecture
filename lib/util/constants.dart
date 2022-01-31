import 'package:flutter/material.dart';

class Constants{
  static const serverErrorMsg = 'Server Error';
  static const cachedErrorMsg = 'Cache Error';
  static const youtubeApiKey = 'AIzaSyDYayUng0pl78SO9yaQef0rCqrnslLHCsg';
}

const kTextRegDecoration = InputDecoration(
  hintText: 'Enter...',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  ),
);