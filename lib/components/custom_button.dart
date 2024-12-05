 import 'package:flutter/material.dart';

 ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
     backgroundColor: Colors.black,
     foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
    elevation: 10,
  );