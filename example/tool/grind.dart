import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:grinder/grinder.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) => grind(args);


@Task('Format dart files')
Future<void> format({String path = '.'}) async {
  await _runProcess('flutter', ['format', path]);
}


@Task('Update code segments')
Future<void> updateCodeSegments() async {
  final codeviewerPath =
      path.join(Directory.current.path, 'tool', 'codeviewer_cli', 'main.dart');

  Dart.run(codeviewerPath);
  final codeSegmentsPath = path.join('lib', 'codeviewer', 'code_segments.dart');
  await format(path: codeSegmentsPath);
}

@Task('Verify code segments')
Future<void> verifyCodeSegments() async {
  final codeviewerPath =
      path.join(Directory.current.path, 'tool', 'codeviewer_cli', 'main.dart');

  // We use stdin and stdout to write and format the code segments, to avoid
  // creating any files.
  final codeSegmentsUnformatted =
      Dart.run(codeviewerPath, arguments: ['--dry-run'], quiet: true);
  final codeSegmentsFormatted = await _startProcess(
    path.normalize(path.join(dartVM.path, '../dartfmt')),
    input: codeSegmentsUnformatted,
  );

  // Read the original code segments file.
  final codeSegmentsPath = path.join(
      Directory.current.path, 'lib', 'codeviewer', 'code_segments.dart');
  final expectedCodeSegmentsOutput =
      await File(codeSegmentsPath).readAsString();

  if (codeSegmentsFormatted.trim() != expectedCodeSegmentsOutput.trim()) {
    stderr.writeln(
      'The contents of $codeSegmentsPath are different from that produced by '
      'codeviewer_cli. Did you forget to run `flutter pub run grinder '
      'update-code-segments` after updating a demo?',
    );
    exit(1);
  }
}

Future<void> _runProcess(String executable, List<String> arguments) async {
  final result = await Process.run(executable, arguments);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
}

// Function to make sure we capture all of the stdout.
// Reference: https://github.com/dart-lang/sdk/issues/31666
Future<String> _startProcess(String executable,
    {List<String> arguments = const [], String? input}) async {
  final output = <int>[];
  final completer = Completer<int>();
  final process = await Process.start(executable, arguments);
  process.stdin.writeln(input);
  process.stdout.listen(
    (event) {
      output.addAll(event);
    },
    onDone: () async => completer.complete(await process.exitCode),
  );
  await process.stdin.close();

  final exitCode = await completer.future;
  if (exitCode != 0) {
    stderr.write(
      'Running "$executable ${arguments.join(' ')}" failed with $exitCode.\n',
    );
    exit(exitCode);
  }
  return Future<String>.value(utf8.decoder.convert(output));
}