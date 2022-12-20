import 'dart:html';

import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  final BuildContext context;
  Filters(this.context);

  @override
  _FiltersState createState() => _FiltersState();
}

List<String> _options = <String>[
  'All',
  'Mechanical',
  'Civil',
  'Electrical',
  'Computer',
  'Bio'
];

class _FiltersState extends State<Filters> {
  String _selectedOption = _options.first;
  bool isCheckedPaid = true;
  bool isCheckedUnpaid = true;
  bool isCheckedOnsite = true;
  bool isCheckedRemote = true;
  @override
  double _start = 0;
  double _end = 12;
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Filters',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          const Text(
            'Date Range',
          ),
          SizedBox(
            width: 300,
            child: RangeSlider(
              min: 0,
              max: 12,
              divisions: 12,
              labels: RangeLabels(
                // _start.round().toString(),
                // _end.round().toString(),
                numToDate(_start.round()),
                numToDate(_end.round()),
              ),
              values: RangeValues(_start, _end),
              onChanged: (RangeValues values) {
                setState(() {
                  _start = values.start;
                  _end = values.end;
                });
              },
            ),
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          const Text(
            'Engineering Concentration',
          ),
          DropdownButton(
            value: _selectedOption,
            items: _options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Column(
                children: [
                  const Text('Paid'),
                  Checkbox(
                    checkColor: Colors.white,
                    // fillColor: Colors.blue,
                    value: isCheckedPaid,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedPaid = value!;
                      });
                    },
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  const Text('Unpaid'),
                  Checkbox(
                    checkColor: Colors.white,
                    // fillColor: Colors.blue,
                    value: isCheckedUnpaid,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedUnpaid = value!;
                      });
                    },
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Column(
                children: [
                  const Text('On-site'),
                  Checkbox(
                    checkColor: Colors.white,
                    // fillColor: Colors.blue,
                    value: isCheckedOnsite,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedOnsite = value!;
                      });
                    },
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  const Text('Remote'),
                  Checkbox(
                    checkColor: Colors.white,
                    // fillColor: Colors.blue,
                    value: isCheckedRemote,
                    onChanged: (bool? value) {
                      setState(() {
                        isCheckedRemote = value!;
                      });
                    },
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
          const Divider(
            thickness: 2,
            color: Colors.black,
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Spacer(),
                  OutlinedButton(
                    onPressed: () => {},
                    child: const Text('List View'),
                  ),
                  Spacer(),
                  OutlinedButton(
                    onPressed: () => {},
                    child: const Text('Map View'),
                  ),
                  Spacer(),
                ],
              )),
        ],
      ),
    );
  }
}

String numToDate(int num) {
  var quarter = "";
  if (num == 0 || num == 4 || num == 8 || num == 12) {
    quarter = "Spring";
  }
  if (num == 1 || num == 5 || num == 9) {
    quarter = "Summer";
  }
  if (num == 2 || num == 6 || num == 10) {
    quarter = "Fall";
  }
  if (num == 3 || num == 7 || num == 11) {
    quarter = "Winter";
  }
  var year = (num / 4).round();
  return "$quarter 200$year";
}

// IntrinsicWidth filters(BuildContext context) {
//   var selectedRange = RangeValues(0, 10);
//   return IntrinsicWidth(
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         const Text(
//           'Filters',
//         ),
//         const Divider(
//           thickness: 2,
//           color: Colors.black,
//         ),
//         const Text(
//           'Date Range',
//         ),
//         RangeSlider(
//           values: selectedRange,
//           onChanged: (RangeValues newRange) {
//             setState(() => selectedRange = newRange);
//           },
//         ),
//         const Divider(
//           thickness: 2,
//           color: Colors.black,
//         ),
//         const Text(
//           'Engineering Concentration',
//         ),
//         const Divider(
//           thickness: 2,
//           color: Colors.black,
//         ),
//         const Text(
//           'Paid     Unpaid',
//         ),
//         const Divider(
//           thickness: 2,
//           color: Colors.black,
//         ),
//         const Text(
//           'On-site     Remote',
//         ),
//         const Divider(
//           thickness: 2,
//           color: Colors.black,
//         ),
//         Row(
//           children: <Widget>[
//             OutlinedButton(
//               onPressed: () => {},
//               child: const Text('List View'),
//             ),
//             OutlinedButton(
//               onPressed: () => {},
//               child: const Text('Map View'),
//             ),
//           ],
//         )
//       ],
//     ),
//   );
// }
