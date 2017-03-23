## Common vim commands

### Modes
- Enter normal mode (if in differnt mode)
```
ESC
```

- Enter insert mode (if in normal mode)
```
i
```

- Enter visual mode (if in normal mode)
```
v
```

- Enter command-line mode (if in normal mode) all comands have to be confirmed with enter
```
:
```

### Basic files commands
- Save changes (in command-line mode)
```
:w
```

- Exit (in command-line mode)
```
:q
```

- Exit without saving changes (in command-line mode)
```
:q!
```

- Open hello.txt in current vim window (in command-line mode)
```
:e hello.txt
```

### Navigation commands
- To move cursor use arrows (To jump whole words hold CTRL while using arrows)
```
CTRL + (left or right arrow)
```

- Move cursor to line 144 (in normal mode)
```
144 SHITF+g
```

- Move cursor to begining of the file
```
CTRL+Home
```

- Move cursor to begining of the line
```
Home
```

- Move cursor to the end of the file
```
CTRL+End
```

- Move cursor to the end of the line
```
End
```

- Move cursor page up
```
PgUp
```

- Move cursor page down
```
PgDown
```

### Search commands
- Search for Hello world! in file (in normal mode confirm with enter)
```
/Hello world!
```
- Find next search result (in normal mode)
```
n
```
- Find previous search result (in normal mode)
```
SHIFT + n
```

- Search Hello case insensitive (in normal mode confirm with enter)
```
/\cHello
```

- Highlight search results (very useful for searching trailing spaces)
```
:set hlsearch
```

- Do not highlight search results
```
:set nohlsearch
```

### Editing commands
- Copy line using vim buffer (in normal mode)
```
yy
```

- To copy selected text (same aplies to cutting), move cursor using arrows to the begining of the text, then enter visual mode, then move cursor to the end of the text and hit
```
y
```

- Cut line using vim buffer
```
dd
```

- Cut only the part of the line from the cursor to the end of the line
```
SHITF + d
```

- Paste from vim buffer
```
p
```

- Replace all number1 with word2 in line (in command-line mode) 
```
:s/number1/word2/g
```

- To replace all number1 with word2 in selected text with option to confirm every replacement, move cursor to begining of the text then enter visual mode then move cursor to the end of the text and then type (it will append selection after :)
```
:s/number1/word2/gc
```

- Replace all number1 with word2 in file (in command-line mode)
```
:%s/number1/word2/g
```

- Indent line (in normal mode)
```
SHIFT+. SHIFT+. 
```

- Unindent line (in normal mode)
```
SHIFT+, SHIFT+,
```

- To indend or unindent block of text, move cursor to the begining of the text, enter visual mode, move cursor to the end of the text and hit
```
SHIFT+. or SHIFT+,
```

### Extended file commands
- Split view horizontally and show file hello.txt (in command-line mode)
```
:split hello.txt
```

- Split view vertically and show file hello.txt (in command-line mode)
```
:vsplit hello.txt
```

- Move to another opened file (when multiple files opened in split view)
```
CTRL+w (arrow key: up, right, left or down)
```

### Useful setting in .vimrc file which will affect vim every time it is used
- Use 4 characters length tab instead of default 8
```
:set tabstop=4
```

- Copy indent from the previous line on enter
```
:set autoindent
```

- Use spaces instead of tabs
```
:set expandtab
```

- Use tabs instead of spaces (if you need to for instance in Makefile)
```
:set noexpandtab
```

- Use 4 characters length while shifting indent
```
:set shiftwidth=4
```

- Display column with line numbers
```
:set number
```

- Hide column with line numbers
```
:set nonumber
```
