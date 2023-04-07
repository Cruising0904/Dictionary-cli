typedef Map<String, String> command();
Map<String, String> commands = {};

List<Map<String, String>> cmds = [
  // commands{ "add":"append new word", },
  {
    "\n(a)  add": "append new word \n",
  },
  {
    "\n(g)  get": "search for word definition\n",
  },
  {
    "\n(u)  update": "amend definition\n",
  },
  {
    "\n(d)  delete": "delete a word\n",
  },
  {
    "\n(l) showAll": "list all words\n",
  },
  {
    "\n(c)  count": "registerd words count\n",
  },
  {
    "\n(m)  upsert": "update+insert\n",
  },
  {
    "\n(e)  exists": "check if the word exists\n",
  },
  {
    "\n(b)  bulkAdd": "add more than a word in bulk\n",
  },
  {
    "\n(D)  bulkDelete": "delte more than one word in bulk\n",
  },
  {
    "\n(?)  help": "Show this command\n",
  },
  {
    "\n(q)  quit": "Terminate the Program\n",
  },
];
