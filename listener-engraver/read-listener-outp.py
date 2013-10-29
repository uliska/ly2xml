import subprocess
p = subprocess.Popen(['lilypond', 'test-listener.ly'], stdout=subprocess.PIPE, 
                                       stderr=subprocess.PIPE)
out, err = p.communicate()
print out
