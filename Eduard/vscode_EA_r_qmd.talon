# Adding Quarto Markdown Support For Positron and VSCode
app: vscode
app: positron
win.file_ext: .qmd
-

# Quarto Markdown
cell next: user.vscode("quarto.goToNextCell")
cell (previous | last): user.vscode("quarto.goToPreviousCell")
notebook run head: user.vscode("quarto.runCellsAbove")
notebook run tail: user.vscode("quarto.runCellsBelow")
cell run here: user.vscode("quarto.runCurrentCell")
cell run: user.vscode("quarto.runCurrentAdvance")
cell run next: user.vscode("quarto.runNextCell")
cell run last: user.vscode("quarto.runPreviousCell")
run [that]: user.vscode("quarto.runCurrent")
notebook run: user.vscode("quarto.runAllCells")
cell new: user.vscode("quarto.insertCodeCell")
[quarto] preview: user.vscode("quarto.previewScript")
format cell: user.vscode("quarto.formatCell")
quarto render: 
    user.vscode('quarto.renderDocument')
    sleep(500ms)
    key(enter)

go to [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    insert(text)


go to [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    insert(text)

fold: user.vscode("editor.toggleFold")

new hidden cell:
    new cell: user.vscode("quarto.insertCodeCell")    
    '#| include: false\n'
    
new hidden mark:
    key(enter)
    ':::'
    '{'
    '.'
   "content-visible when-meta='verbose'}\n"
    '\n'
    ':::'
    key('up')

new hidden mark processing:
    key(enter)
    ':::'
    '{'
    '.'
   "content-visible when-meta='processing'}\n"
    '\n'
    ':::'
    key('up')

two columns:
    user.vscode("quarto.goToPreviousCell")
    user.vscode("quarto.goToNextCell")
    '#| layout-ncol: 2\n'
    key(backspace:2)

figure width <number>:
    user.vscode("quarto.goToPreviousCell")
    user.vscode("quarto.goToNextCell")
    '#| fig-width: '
    insert(number)
    '\n'
    key(backspace:2)

figure height <number>:
    user.vscode("quarto.goToPreviousCell")
    user.vscode("quarto.goToNextCell")
    '#| fig-height: '
    insert(number)
    '\n'
    key(backspace:2)

figure <number> by <number>:
    user.vscode("quarto.goToPreviousCell")
    user.vscode("quarto.goToNextCell")
    '#| fig-width: '
    insert(number_1)
    sleep(100ms)
    insert('\n')
    key(backspace:2)
    sleep(100ms)
    '#| fig-height: '
    insert(number_2)
    sleep(100ms)
    insert('\n')
    key(backspace:2)

## RevealJS:

slide new: 
    key(down)
    insert('\n')
    insert('##')
    insert('\n\n')
    key(up:2)
    key(right:2)
    key(space)

slide columns:
    key(down)
    insert('\n')
    insert('::::: {{.columns}}\n\n\n\n')
    insert(':::::\n\n')
    key(up:4)
    

slide columns two:
    insert('::::: {{.columns}}\n\n')
    insert(':::: {{.column width="50%"}}\n\n\n\n')
    insert('::::\n\n')
    insert(':::: {{.column width="50%"}}\n\n\n\n')
    insert('::::\n\n')
    insert(':::::\n\n')
    key(up:12)

slide columns three:
    insert('::::: {{.columns}}\n\n')
    insert(':::: {{.column width="33%"}}\n\n\n\n')
    insert('::::\n\n')
    insert(':::: {{.column width="33%"}}\n\n\n\n')
    insert('::::\n\n')
    insert(':::: {{.column width="33%"}}\n\n\n\n')
    insert('::::\n\n')
    insert(':::::\n\n')
    key(up:18)

slide column width <number>:
    key(down)
    insert('\n')
    insert(':::: {{.column width="')
    insert(number)
    insert('%"}}\n\n\n\n')
    insert('::::\n\n')
    key(up:4)

slide fragment:
    insert('::: {{.fragment}}\n\n\n\n')
    insert(':::')
    key(up:2)

slide fragment here:
    edit.select_line()
    edit.cut()
    insert('::: {{.fragment}}\n\n\n\n')
    insert(':::')
    key(up:2)
    edit.paste()

    




