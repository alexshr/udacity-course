// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:solution_04_navigation/unit.dart';

/// Unit Widget.
/// for category unit listView
///
class UnitWidget extends StatelessWidget {
  final Unit unit;
  final Color color;

  const UnitWidget({@required this.unit, @required this.color})
      : assert(unit != null),
        assert(color != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            unit.name,
            style: Theme.of(context).textTheme.headline,
          ),
          Text(
            'Conversion: ${unit.conversion}',
            style: Theme.of(context).textTheme.subhead,
          ),
        ],
      ),
    );
  }
}
