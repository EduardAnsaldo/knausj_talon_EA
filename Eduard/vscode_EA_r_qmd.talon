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
