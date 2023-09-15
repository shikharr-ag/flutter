// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:native_assets_cli/native_assets_cli.dart' hide BuildMode;

import '../globals.dart' as globals;
import 'visual_studio.dart';

Future<CCompilerConfig> cCompilerConfigWindows() async {
  final VisualStudio visualStudio = VisualStudio(
    fileSystem: globals.fs,
    platform: globals.platform,
    logger: globals.logger,
    processManager: globals.processManager,
  );

  return CCompilerConfig(
    cc: visualStudio.clPath?.toFileUri(),
    ld: visualStudio.linkPath?.toFileUri(),
    ar: visualStudio.libPath?.toFileUri(),
    envScript: visualStudio.vcvarsPath?.toFileUri(),
    envScriptArgs: <String>[],
  );
}

extension on String {
  Uri toFileUri() => Uri.file(this);
}
