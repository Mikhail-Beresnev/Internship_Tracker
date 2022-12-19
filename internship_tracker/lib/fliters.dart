import 'package:flutter/material.dart';

IntrinsicWidth fliters() {
  return IntrinsicWidth(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Filters',
        ),
        const Divider(
          thickness: 2,
          color: Colors.black,
        ),
        const Text(
          'Date Range',
        ),
        const Divider(
          thickness: 2,
          color: Colors.black,
        ),
        const Text(
          'Engineering Concentration',
        ),
        const Divider(
          thickness: 2,
          color: Colors.black,
        ),
        const Text(
          'Paid     Unpaid',
        ),
        const Divider(
          thickness: 2,
          color: Colors.black,
        ),
        const Text(
          'On-site     Remote',
        ),
        const Divider(
          thickness: 2,
          color: Colors.black,
        ),
        Row(
          children: <Widget>[
            OutlinedButton(
              onPressed: () => {},
              child: const Text('List View'),
            ),
            OutlinedButton(
              onPressed: () => {},
              child: const Text('Map View'),
            ),
          ],
        )
      ],
    ),
  );
}
