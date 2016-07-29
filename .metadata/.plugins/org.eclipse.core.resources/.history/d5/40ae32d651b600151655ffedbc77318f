//#include <string>
//#include <iostream>
//#include <fstream>
//#include <sstream>
//#include <vector>
//#include <limits>                           //I used std::numeric_limits<int>::max()
//#include "ics46goody.hpp"
//#include "array_queue.hpp"
//#include "array_priority_queue.hpp"
//#include "array_set.hpp"
//#include "array_map.hpp"
//
//
//typedef ics::ArrayQueue<std::string>         WordQueue;
//typedef ics::ArraySet<std::string>           FollowSet;
//typedef ics::pair<WordQueue,FollowSet>       CorpusEntry;
//typedef ics::ArrayPriorityQueue<CorpusEntry> CorpusPQ;     //Convenient to supply gt at construction
//typedef ics::ArrayMap<WordQueue,FollowSet>   Corpus;
//
//
////Return a random word in the words set (use in produce_text)
//std::string random_in_set(const FollowSet& words) {
//  int index = ics::rand_range(1, words.size());
//  int i = 0;
//  for (const std::string& s : words)
//    if (++i == index)
//      return s;
//  return "?";
//}
//
//
////Read an open file of lines of words (separated by spaces) and return a
////  Corpus (Map) of each sequence (Queue) of os (Order-Statistic) words
////  associated with the Set of all words that follow them somewhere in the
////  file.
//Corpus read_corpus(int os, std::ifstream &file) {
//}
//
//
////Print "Corpus" and all entries in the Corpus, in lexical alphabetical order
////  (with the minimum and maximum set sizes at the end).
////Use a "can be followed by any of" to separate the key word from the Set of words
////  that can follow it.
//
////One queue is lexically greater than another, if its first value is smaller; or if
////  its first value is the same and its second value is smaller; or if its first
////  and second values are the same and its third value is smaller...
////If any of its values is greater than the corresponding value in the other queue,
////  the first queue is not greater.
////Note that the queues sizes are the same: each stores Order-Statistic words
////Important: Use iterators for examining the queue values: DO NOT CALL DEQUEUE.
//
//bool queue_gt(const CorpusEntry& a, const CorpusEntry& b) {
//}
//
//void print_corpus(const Corpus& corpus) {
//}
//
//
////Return a Queue of words, starting with those in start and including count more
////  randomly selected words using corpus to decide which word comes next.
////If there is no word that follows the previous ones, put "None" into the queue
////  and return immediately this list (whose size is <= start.size() + count).
//WordQueue produce_text(const Corpus& corpus, const WordQueue& start, int count) {
//}
//
//
//
////Prompt the user for (a) the order statistic and (b) the file storing the text.
////Read the text as a Corpus and print it appropriately.
////Prompt the user for order statistic words from the text.
////Prompt the user for number of random words to generate
////Call the above functions to solve the problem, and print the appropriate information
//int main() {
//  try {
//
//
//
//  } catch (ics::IcsError& e) {
//    std::cout << e.what() << std::endl;
//  }
//
//  return 0;
//}
