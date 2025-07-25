#custom vscode commands go here
app: vscode
-


# jupyter
cell next: user.vscode("list.focusDown")
cell last: user.vscode("list.focusUp")
run head notebook: user.vscode("notebook.cell.executeCellsAbove")
run cell: user.vscode("notebook.cell.executeAndSelectBelow")
run notebook: user.vscode("notebook.execute")
cell edit: user.vscode("notebook.cell.edit")
cell last edit: user.vscode("notebook.focusPreviousEditor")
cell exit: user.vscode("notebook.cell.quitEdit")
new cell: user.vscode("notebook.cell.insertCodeCellBelow")
new mark: user.vscode("notebook.cell.insertMarkdownCellBelow")


delete cell: 
    user.vscode('notebook.cell.delete')

running: user.vscode('notebook.revealRunningCell')
clear notebook outputs: user.vscode('notebook.clearAllCellsOutputs')
focus output: user.vscode('notebook.cell.focusInOutput')
fold:
     user.vscode('notebook.fold')
     key('down')
unfold: user.vscode('notebook.unfold')
interrupt: user.vscode('notebook.cancelExecution')
go failed: user.vscode('notebook.revealLastFailedCell')
clear cell output: user.vscode('notebook.cell.clearOutputs.')

equal: ' = '

new hidden cell:
    user.vscode("notebook.cell.insertCodeCellBelow")    
    '#| output: false\n'
    '#| echo: false\n'
    
new hidden mark:
    user.vscode('notebook.cell.insertMarkdownCellBelow')
    ':::'
    '{'
    '.'
   "content-visible when-meta='verbose'}\n"
    '\n'
    ':::'
    key('up')

new hidden mark processing:
    user.vscode('notebook.cell.insertMarkdownCellBelow')
    ':::'
    '{'
    '.'
   "content-visible when-meta='processing'}\n"
    '\n'
    ':::'
    key('up')

new hidden cell processing:
    user.vscode("notebook.cell.insertCodeCellBelow")
    ':::'
    '{'
    '.'
   "content-visible when-meta='processing'}\n"
    '\n\n\n'
    ':::'
    key('up')
    key('up')
    