import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

Widget getMap() {
  String htmlId = "7";

  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
    final myLatlng = LatLng(39.8283, 263.5795);

    final mapOptions = MapOptions()
      ..zoom = 5
      ..center = LatLng(39.8283, 263.5795);

    final elem = DivElement()
      ..id = htmlId
      ..style.width = "100%"
      ..style.height = "100%"
      ..style.border = 'none';

    final map = GMap(elem, mapOptions);

    Marker(MarkerOptions()
      ..position = myLatlng
      ..map = map
      ..title = 'Hello World!');

    Marker(MarkerOptions()
      ..position = LatLng(39.8283, 250.5795)
      ..map = map
      ..title = 'Hello World!');

    return elem;
  });

  return HtmlElementView(viewType: htmlId);
}
