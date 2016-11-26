import os 
dir_path = os.path.dirname(os.path.realpath(__file__))
print(dir_path)
while 1:
	text = raw_input('Enter a Command: ')
	target = open(dir_path+"/input.command", 'w')
	target.write(text)
	target.close()
	
	
#if the file does not get deleted on next input then print(Please wait a second!)
