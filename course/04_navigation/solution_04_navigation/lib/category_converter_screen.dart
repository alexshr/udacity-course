// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:solution_04_navigation/unit_widget.dart';
import 'package:solution_04_navigation/unit.dart';

/// Converter screen where users can input amounts to convert.
///
/// Currently, it just displays a list of mock units.
///
/// While it is named ConverterRoute, a more apt name would be ConverterScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryConverterRoute extends StatelessWidget {
  /// This [Category]'s name.
  final String name;

  /// Color for this [Category].
  final Color color;

  /// Units for this [Category].
  final List<Unit> units;

  /// This [CategoryConverterRoute] requires the name, color, and units to not be null.
  const CategoryConverterRoute({
    @required this.name,
    @required this.color,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(units != null);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text(
          name,
          style: Theme.of(context).textTheme.display1,
        ),
        centerTitle: true,
        backgroundColor: color,
      ),
      body: _buildUnitListView()
    );
  }

  _buildUnitListView(){
    List<UnitWidget>_unitWidgetList=units.map((Unit unit) {
      return UnitWidget(unit: unit, color: color);
    }).toList();
    return ListView(
      children:_unitWidgetList,
    );
  }
}
