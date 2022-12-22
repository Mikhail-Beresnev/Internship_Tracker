import 'package:flutter/material.dart';

Expanded listView() {
  var test = companyCard('Stooge1', 'Fall 2020 - Spring 2021', 'Paid',
      'Universal City, CA', 'Stooge1@stoogeengineering.com', 'Civil');
  return Expanded(
    child: SingleChildScrollView(
      controller: ScrollController(),
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        // controller: ScrollController(),
        // scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
            test,
          ],
        ),
      ),
    ),
  );
}

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
