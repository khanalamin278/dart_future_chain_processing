import 'package:dart_future_chain_processing/dart_future_chain_processing.dart';
import 'package:test/test.dart';

void main() {
  test('processInChain processes numbers in a chain asynchronously', () async {
    var processed = await processInChain([1, 2, 3]);
    expect(processed, equals([2, 4, 6]));
  });

  test('processInChain returns an empty list for an empty input', () async {
    var processed = await processInChain([]);
    expect(processed, isEmpty);
  });
}
