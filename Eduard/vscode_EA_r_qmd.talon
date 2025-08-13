#custom vscode commands go here
app: vscode
code.language: r
-


# Quarto Markdown
cell next: user.vscode("quarto.goToNextCell")
cell last: user.vscode("quarto.goToPreviousCell")
format cell: user.vscode("quarto.formatCell")
run head notebook: user.vscode("quarto.runCellsAbove")
run tail notebook: user.vscode("quarto.runCellsBelow")
run cell here: user.vscode("quarto.runCurrentCell")
run cell: user.vscode("quarto.runCurrentAdvance")
run next cell: user.vscode("quarto.runNextCell")
run last cell: user.vscode("quarto.runPreviousCell")
run that: user.vscode("quarto.runCurrent")
run notebook: user.vscode("quarto.runAllCells")
new cell: user.vscode("quarto.insertCodeCell")

quarto preview: user.vscode("quarto.previewScript")

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

go to [<user.text>]:
    user.vscode("workbench.action.gotoSymbol")
    insert(text)
