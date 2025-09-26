tag: terminal
-
	
jupiter: "jupyter notebook "	
 
connect to garibaldi: 
	"ssh eansaldo@login02.scripps.edu"
	key(enter)

interactive session: 
	"salloc"
	key(enter)	

Mike's lab: 
	"cd /gpfs/group/constantinides/Eduard_Ansaldo/"
	key(enter)
	"ls"
	key(enter)

Renan's lab:
	"cd /gpfs/group/de_carvalho/"
	key(enter)
	"ls"
	key(enter)

Shika's lab:
	"cd /gpfs/group/constantinides/Eduard_Ansaldo/Ramanan_collaboration/"
	key(enter)
	"ls"
	key(enter)

Copy to server Mike:
 	"scp -r ./* eansaldo@login02.scripps.edu:/gpfs/group/constantinides/Eduard_Ansaldo/"

Copy from server Mike:
 	"scp -r eansaldo@login02.scripps.edu:/gpfs/group/constantinides/Eduard_Ansaldo/ ./"
	key(left:4)

Copy from server Renan:
 	"scp -r eansaldo@login02.scripps.edu:/gpfs/group/de_carvalho/ ./"
	key(left:4)

Copy from server Shika:
 	"scp -r eansaldo@login02.scripps.edu:/gpfs/group/constantinides/Eduard_Ansaldo/Ramanan_collaboration/ ./"
	key(left:4)

Copy to server Renan:
 	"scp -r ./* eansaldo@login02.scripps.edu:/gpfs/group/de_carvalho/"

Copy to server Shika:
 	"scp -r ./* eansaldo@login02.scripps.edu:/gpfs/group/constantinides/Eduard_Ansaldo/Ramanan_collaboration/"

Copy to server scripts:
 	"scp -r ./* eansaldo@login02.scripps.edu:~/scripts/"
	key(left:40)

katie upper:
	"cd .."
	key(enter)
	"ls"
	key(enter)

katie any [<user.text>]:
	'cd *'
	insert(text)
	'*'
	sleep(100ms)
	key(enter)
	"ls"
	sleep(100ms)
	key(enter)

open$:
	key(tab)
	key(enter)
	"ls"
	key(enter)

remove folder:
	"rm -rf "

new folder: 'mkdir '

less: 'less '

my folder: 
 	"cd ~"
	key(enter)
	"ls"
	key(enter)

new job:
 	"xargs -0 -a commands.txt python ~/scripts/create_sbatch_for_command_EA.py --command "

create jobs:
	'python ~/scripts/create_sbatch_for_command_individual_jobs.py\n'

create dependent jobs:
	'python ~/scripts/create_sbatch_for_command_individual_jobs.py --dependent TRUE\n'

copy outputs:
	'bash ~/scripts/bash_script_outputs.sh\n'

submit job:
	"sbatch jo"
	key(tab)
	key(enter)

jobs status:
	"squeue -u eansaldo"
	key(enter)

cancel job:
	'scancel '

download sequencing data:
	'wget --no-check-certificate -r '

initialize analysis folder:
	'Initialize_analysis_folder.py ./'

copy analysis folder:
	'copy_analysis_folder.py'
	key(enter)

update gitignore:
	'update_gitignore.py'
	key(enter)

update dropbox:
	'update_dropbox.py'
	key(enter)

dry run update dropbox:
	'update_dropbox_dry_run.py'
	key(enter)

# TCR modules:
# 	"module load BLAST+/2.2.31-goolf-1.7.20-Python-2.7.9"
# 	key(enter)
# 	"module load Biopython/1.65-goolf-1.7.20-Python-2.7.9"	
# 	key(enter)


# katie upper:
# 	"cd .."
# 	key(enter)

# 	"ls"
# 	key(enter)

# open$:
# 	key(tab)
# 	key(enter)
# 	"ls"
# 	key(enter)

# remove folder:
# 	"rm -rf "

# new job:
# 	"python /nethome/ansaldoginee2/scripts/create_qsub_for_command_EA.py\n"
	