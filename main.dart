/*TODO:
make a Dictionary that funcitons add, get, delete, update, showAll, count, upsert, exists, bulkAdd, bulkDelete
Requirements to use class, typedefs, List, Map
*/
import 'dart:io';

import 'commands.dart';
import 'functions.dart';

void main() {
  var dic = Dic(word: "", definition: "");
  late String input;
  String typing() {
    String put = stdin.readLineSync()!;
    return put;
  }

  print("Hi Please Enter command");

  print("See available commands type ?");
  bool terminate = false;
  do {
    print("type command to proceed");
    input = stdin.readLineSync()!;
    switch (input) {
      case 'q':
        terminate = true;
        break;
      case 'a':
        print("type word to add");
        String word = typing();
        print("Input definition");
        String definition = typing();
        register(word, definition);
        break;
      case 'g':
        print("input a word to find");
        String word = typing();
        get(word);
        break;
      case 'u':
        print("type a word to update");
        String word = typing();
        print("type new definition");
        String newDef = typing();
        update(word, newDef);
        break;
      case 'd':
        print("type a word to delete");
        String word = typing();
        delete(word);
        break;
      case 'l':
        showAll();
        break;
      case 'c':
        count();
        break;
      case 'm':
        print("type a word");
        String word = typing();
        print("type definition");
        String definition = typing();
        upsert(word, definition);
        break;
      case 'e':
        print("type word to check");
        String word = typing();
        if (exists(word)) {
          print(word);
        } else {
          print("not found");
        }
        ;
        break;

      case 'b':
        Map<String, String> ff = {"demo": "added"};
        print("if you finished press f, if want to abort press q");
        print("type word");
        while (true) {
          print("type command(f/q) or continue");
          String cmd = typing();
          if (cmd == 'q') {
            break;
          } else if (cmd == 'f') {
            print("Are you Sure finished?(y/n)");
            String cmd = typing();
            if (cmd == 'y') {
              // print(inputs);
              bulkAdd(ff);
              // wordList.addAll(s);
              break;
            } else if (cmd == 'n') {
              // print()
              continue;
            }
          } else {
            //TODO: pass value to constructor
            print("type definition");
            var def = typing();
            print("word:$cmd, def:$def");
            ff[cmd] = def;

            print("inputs: $ff ");
          }
        }

        break;
      case 'D':
        List<String> ff = [];
        print("if you finished press f, if want to abort press q");
        print("type word to remove");
        while (true) {
          print("type command(f/q) or continue");
          String cmd = typing();
          if (cmd == 'q') {
            break;
          } else if (cmd == 'f') {
            print("Are you Sure finished?(y/n)");
            String cmd = typing();
            if (cmd == 'y') {
              bulkDelete(ff);
              break;
            } else if (cmd == 'n') {
              continue;
            }
          } else {
            ff.add(cmd);
            print("inputs: $ff ");
          }
        }
        bulkDelete(ff);
        break;

      case '?':
        print(cmds);
        break;
    }
  } while (terminate == false);
}
