/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_future_chain_processing_base.dart';

/*
Practice Question 1: Future Chain Processing
Task:
Write a function processInChain that takes a list of integers. 
It should process each integer asynchronously in a chain 
(i.e., start processing the next integer only after the 
previous one is done). The processing function should be 
asynchronous and return the integer after multiplying it by 2. 
The function should return a Future<List<int>> with the 
processed numbers.
*/

Future<List<int>> processInChain(List<int> input) async {
  List<int> ans = []; // খালি একটা লিস্ট তৈরি করা হয়েছে

  for (var indev in input) {
    // ইনপুট লিস্ট এর ভেতর লুপ চালানো হয়েছে
    await Future.delayed(
        Duration(seconds: 1)); // প্রতিটি লুপের মান 1 সেকেন্ট পর পর আসবে
    ans.add(indev *
        2); // প্রতিটি মানকে ২ দিয়ে গুন করে তা খালি লিস্ট এ যোগ করা হয়েছে
  }

  return ans; // সর্ব শেষ খালি লিস্ট কে রিটান্ড করা হয়েছে
}
