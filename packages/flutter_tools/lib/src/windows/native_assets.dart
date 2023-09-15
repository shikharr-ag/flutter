// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:native_assets_cli/native_assets_cli.dart' hide BuildMode;

Future<CCompilerConfig> cCompilerConfigWindows() async {
  // Both package:native_toolchain_c and flutter_tools use vswhere so
  // don't pass the information here. Passing the information
  // would require copying the logic for finding cl.exe and
  // vcvars to flutter_tools.
  // TODO(dacoharkes): Can we share the logic between the two packages? https://github.com/flutter/flutter/issues/129757
  return CCompilerConfig();
}
