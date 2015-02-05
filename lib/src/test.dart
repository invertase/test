// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library unittest.test;

import 'live_test.dart';
import 'suite.dart';

/// A single test.
///
/// A test is immutable and stateless, which means that it can't be run
/// directly. To run one, load a live version using [Test.load] and run it using
/// [LiveTest.run].
abstract class Test {
  /// The name of the test.
  String get name;

  /// Loads a live version of this test, which can be used to run it a single
  /// time.
  ///
  /// [suite] is the suite within which this test is being run.
  LiveTest load(Suite suite);
}
