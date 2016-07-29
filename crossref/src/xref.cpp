#include <string>
#include <iostream>
#include <fstream>
#include <vector>
#include "ics46goody.hpp"
#include "array_stack.hpp"
#include "array_priority_queue.hpp"
#include "array_map.hpp"


//Useful typedefs: meaningful names connected to specific implementations
//  that are used in this program; some of these can be changed to use
//  different implementations (e.g., not Array) when those become available,
//  to improve the performance of the program; we must change #includes too.
//Note this program uses ArrayStack, ArrayPriorityQueue, and ArrayMap
typedef ics::ArrayStack<int>                  LineStack;
typedef ics::pair<std::string,LineStack>      XRefEntry;
typedef ics::ArrayPriorityQueue<XRefEntry>    XRefPQ;
typedef ics::ArrayMap<std::string,LineStack>  XRef;


//Read an open file of words separated by spaces and return a cross
//  reference (Map) of each word associated with the lines on which it
//  appears; if a word appears multiple times on a line, just record the
//  line number once (this requirement makes stacks the best data type
//  to record line numbers).
XRef read_xref(std::ifstream& file) {
  XRef xref;

  std::string line;
  int line_number = 0;
  while (getline(file,line)) {
    line_number++;
    std::vector<std::string> words = ics::split(line," ");

    for (const std::string& word : words)
      if (!xref.has_key(word) || xref[word].peek() != line_number)
        xref[word].push(line_number);
  }

  file.close();
  return xref;
}


//Print message and all the entries in a cross reference in the order specified
//  by *has_higher_priority: i is printed before j, if has_higher_priority(i,j)
//  returns true.
void print_xref(std::string message,
                const XRef& xref,
                bool (*has_higher_priority)(const XRefEntry& i,const XRefEntry& j)) {
  std::cout << "\n" << message << std::endl;
  for (const XRefEntry& kv : XRefPQ(xref,has_higher_priority))
    std::cout << "  " << kv.first << " --> " << kv.second << std::endl;
}


////An improved print_xref, printing line numbers ascending, separated by commas.
////Print message and all the entries in a cross reference in the order specified
////  by *has_higher_priority: i is printed before j, if has_higher_priority(i,j)
////  returns true.
//void print_xref(std::string message, XRef& xref,
//                bool (*has_higher_priority)(const XRefEntry& i,const XRefEntry& j)) {
//  std::cout << "\n" << message << std::endl;
//  XRefPQ sorted(xref,has_higher_priority);
//  for (const XRefEntry& kv : sorted) {
//    std::cout << "  " << kv.first << " --> ";
//    LineStack lines;
//    for (auto v : kv.second)
//      lines.push(v);
//    int count = 0;
//    for (const int& line : lines)
//      std::cout << (count++ == 0 ? "  " : ", ") << line;
//    std::cout << std::endl;
//  }
//}


//Prompt the user for a file, create a cross reference of its contents, and print
//  the entries in the cross reference two ways: sorted alphabetically (increasing)
//  by words and sorted by frequency of word use (decreasing); see the two lambdas
//  used to specify the order in which to print the entries.
int main() {
  std::ifstream text_file;
  ics::safe_open(text_file,"Enter file name to analyze","text.txt");

  XRef xref = read_xref(text_file);

  print_xref("XRef alphabetically",xref,
             [](const XRefEntry& i,const XRefEntry& j){return (i.first == j.first ? i.second.size() < j.second.size() : i.first < j.first);});
  print_xref("XRef by frequency",xref,
             [](const XRefEntry& i,const XRefEntry& j){return (i.second.size() == j.second.size() ? i.first < j.first : i.second.size() > j.second.size());});

  return 0;
}




