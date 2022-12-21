import 'package:flutter/material.dart';

Card companyCard(String company, String timeline, String compensation,
    String location, String email, String concentration) {
  return Card(
    child: SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Company: $company'),
              Text('Timeline: $timeline'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Compensation: $compensation'),
              Text('Location: $location'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email: $email'),
              Text('Concentration: $concentration'),
            ],
          ),
        ],
      ),
    ),
  );
}
