from shutit_module import ShutItModule

class walkthrough_1_2(ShutItModule):


	def build(self, shutit):
		if shutit.file_exists('/tmp/1.2.1',directory=True):
			shutit.fail('Directory /tmp/1.2.1 already exists, please remove.')
		shutit.send('cd /tmp')
		shutit.send('mkdir 1.2.1 && cd 1.2.1',note='Create a new folder and move into it')
		shutit.send('git init',note='Initialise a git repository.')
		shutit.send('cd .git',note='Enter the newly-created git folder.')
		shutit.send('ls',note='Have a look around.')
		shutit.send('cat HEAD',note='Have a look at the HEAD pointer. What is it pointed at?')
		shutit.send('cat config',note='Have a look at the config file.')
		shutit.send('cd ..',note='Return to previous folder.')
		shutit.send('git log',note='Look at the history of this repository (it does not have one!)')
		shutit.send('ls .git/refs/heads/master',note='Looking at where the HEAD was pointed, there is no file. No master branch has been created!')
		shutit.send('git status',note='git status often helps you figure out what is going on.')
		shutit.send('touch mycode.py',note='Create a dummy code file.')
		shutit.send('git status',note='Re-check status. What has changed?')
		shutit.send('git add mycode.py',note='Get git to start tracking this file by adding it.')
		shutit.send('git status',note='Re-check status. What has changed?')
		shutit.send('git log',note='Look at the history of this repository again. It still does not have one because we have not committed anything.')
		shutit.send('git commit',note='Commit the file (use git commit -am "initial commit" if you do not like vi as an editor)')
		shutit.send('git log',note='Look at the history of this repository.')
		shutit.send('vi mycode.py',note='Add some content to the file (you do not have to use vi).')
		shutit.send('git diff',note='Look at the difference between your working directory and what is stored in git.')
		shutit.send('git status',note='Re-check status. What has changed?')
		shutit.send('git commit -a',note='Add and commit the file (use git commit -am "second commit" if you do not like vi as an editor)')
		shutit.send('git status',note='Re-check status. What has changed?')
		shutit.send('git log',note='Look at the history of this repository.')
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
		return walkthrough_1_2(
			'walkthroughs.walkthrough_1_2.walkthrough_1_2', 541320744.0001,   
			description='',
			maintainer='',
			delivery_methods=['bash'],
			depends=['shutit.tk.setup']
		)

