from shutit_module import ShutItModule

class walkthrough_1_3(ShutItModule):


	def build(self, shutit):
		if shutit.file_exists('/tmp/1.3.1',directory=True):
			shutit.fail('Directory /tmp/1.3.1 already exists, please remove.')
		shutit.send('cd /tmp')
		shutit.send('mkdir 1.3.1 && cd 1.3.1',note='Create a new folder and move into it')
		shutit.send('git clone https://github.com/ianmiell/shutit',note='Cloned a relatively large repository')
		shutit.send('cd shutit',note='Move into checked-out folder')
		shutit.send('ls .git',note='There is a .git folder here, naturally.')
		shutit.send('git log',note='The default view of the history of this repo')
		shutit.send('git log --oneline',note='A more concise history of this repo')
		shutit.send('git log --oneline --graph',note='A graphical view of the history of this repo')
		shutit.send('cd ..',note='''Exit this repo's root folder ready to clone from your clone''')
		shutit.send('git clone shutit cloned_shutit',note='Clone your just-cloned repository into a new one called "cloned_shutit"')
		shutit.send('cd cloned_shutit',note='Enter the repository')
		shutit.send('rm -rf *',note='Delete all the non dotfiles!')
		shutit.send('ls .git',note='The .git folder is still there')
		shutit.send('git status',note='git status, ever your friend, reports that we have deleted files in working tree/directory')
		shutit.send('git add .',note='Add the deletions to staging/index area')
		shutit.send('git status,'note='git status now reports that the files are ready to commit. Note there is a helpful message about resetting now! Now you will explore that.')
		shutit.send('git reset --mixed',note='git reset (--mixed is the default). Takes our added changes out of the staging/index area, but it is still deleted in the working directory!')
		shutit.send('git status,'note='''git status reports that you are back to 'deleted in the working directory' with a message about being ready to add''')
		shutit.send('rm -rf *,'note='Delete all the files again!')
		shutit.send('git add .',note='Add to staging/index area ready to commit again')
		shutit.send('git reset --hard',note='A hard reset does a re-check out of the whole repository, discarding working directory and changes to the index')
		shutit.send('git status',note='You now have a consistent state between 1 (local changes) and 3 (committed)')
		return True
                                 
	def get_config(self, shutit):

		return True

	def test(self, shutit):

		return True

	def finalize(self, shutit):

		return True

	def isinstalled(self, shutit):

		return False

	def start(self, shutit):

		return True

	def stop(self, shutit):

		return True

def module():
		return walkthrough_1_3(
			'walkthroughs.walkthrough_1_3.walkthrough_1_3', 1464129202.0001,   
			description='',
			maintainer='',
			delivery_methods=['bash'],
			depends=['shutit.tk.setup']
		) 


