#custom vscode commands go here
app.bundle: co.posit.positron
app.bundle: com.microsoft.VSCode
win.file_ext: .qmd
-


# Quarto Markdown
cell next: user.vscode("quarto.goToNextCell")
cell last: user.vscode("quarto.goToPreviousCell")
format cell: user.vscode("quarto.formatCell")
notebook run head: user.vscode("quarto.runCellsAbove")
notebook run tail: user.vscode("quarto.runCellsBelow")
cellbrun here: user.vscode("quarto.runCurrentCell")
cell run: user.vscode("quarto.runCurrentAdvance")
cell run next: user.vscode("quarto.runNextCell")
cell run last: user.vscode("quarto.runPreviousCell")
run that: user.vscode("quarto.runCurrent")
notebook run: user.vscode("quarto.runAllCells")
cell new: user.vscode("quarto.insertCodeCell")

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
