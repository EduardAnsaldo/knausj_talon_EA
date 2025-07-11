os: windows
and app.name: WindowsTerminal.exe
os: windows
and app.exe: WindowsTerminal.exe
-
lisa:
	"ls"
	key(enter)

folder <user.prose>$:
	"cd "
	insert(prose)
	sleep(500ms)
	key(tab)
	key(enter)
	"ls"
	key(enter)

folder <user.letters>$:
	"cd "
	key(letters)
	sleep(300ms)
	key(tab)
	key(enter)
	"ls"
	key(enter)

folder (ship | uppercase) <user.letters> [(lowercase | sunk)]:
	"cd "
	user.insert_formatted(letters, "ALL_CAPS")
	sleep(300ms)
	key(tab)
	key(enter)
	"ls"
	key(enter)

folder <number_small>$:
	"cd "
	key('{number_small}')
	sleep(300ms)
	key(tab)
	key(enter)
	"ls"
	key(enter)

folder scratch: 
	"cd /hpcdata/scratch/Eduard_Ansaldo/"
	key(enter)
	"ls"
	key(enter)

create sample sheet:
	"python /nethome/ansaldoginee2/scripts/make_bcl_convert.py"
	key(enter)	

python script:
	'python /nethome/ansaldoginee2/scripts/'

merge sequencing data:
	'python /nethome/ansaldoginee2/scripts/merge_fastq_create_qsub_for_command_EA.py\n'
	"qsub Merge"
	key(tab)
	key(enter)

	
jobs status:
	"qstat -u ansaldoginee2"
	key(enter)

katie upper:
	"cd .."
	key(enter)
	"ls"
	key(enter)

open$:
	key(tab)
	key(enter)
	"ls"
	key(enter)

remove folder:
	"rm -rf "

submit job:
	"qsub jo"
	key(tab)
	key(enter)
	
new job:
	"python /nethome/ansaldoginee2/scripts/create_qsub_for_command_EA.py\n"
	
copy files for submission:
	'python /nethome/ansaldoginee2/scripts/copy_files_for_submission.py\n'

upload data for submission:
	'python /nethome/ansaldoginee2/scripts/upload_data_for_submission.py\n'