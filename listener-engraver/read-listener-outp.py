import subprocess

command = ['lilypond',
            '-dno-point-and-click',
            '-ddelete-intermediate-files',
            'test-listener.ly']
p = subprocess.Popen(command, stdout=subprocess.PIPE,
                                       stderr=subprocess.PIPE)
out, err = p.communicate()

tabsplit = out.split('\t')

for tab in tabsplit:
        print tab
