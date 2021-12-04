# Linux Commands

- pwd
- clear

### ls

- ls [options] [file_directory]
- ls Downloads
- ls /
  - listing root directory
- ls ~
  - listing home directory
- ls ..
  - list parent directory
- ls ../..
  - list parent of parent directory
- ls -l
  - list directory in details
  - drwxr-xr-r - d:dir, r:read, w:write
- ls -a
  - show hidden files
- ls -la
  - show hidden files with details
- ls -lS
  - sort directory by size
- ls Docs/\*.py
  - only list python files
- ls -la > file.txt
  - store all the content of "ls -la" into file.txt
- ls -d \*/
  - only list directory
- "file permissions"
  - {file or dir}{user permission}-{group-permission}-{permission}
  - r read
  - w write
  - x executable
- ls -ld dirname
- man ls
  - help ls

### cd

- cd
  - change to home directory
- cd /
  - change to root directory
- cd ..
  - go to parent directory
- cd dirpath
- how to navigate to folder which names has space
  - cd folder\ name
  - cd "folder name"
  - cd 'folder name'

### cat

- cat [options] file1 file2 ...
- 3 major functions
  - print content in the file
  - copy content of a file
  - create a content in a file
- cat
  - echo whatever you type
- cat file.txt file2.txt
  - print content of two files
- cat -b file.txt
  - add line number except blank line
- cat -n file.txt
  - add line number including blank line
- cat -s file.txt
  - squeze the multiple blank line into one blankline
- cat -E file.txt
  - add number+$ in end of the line
- cat > file.txt
  - write a file
- cat >> file.txt
  - append content
- cat file1.txt file2.txt > file.txt

### mkdir

- mkdir image
- mkdir image/pics
- mkdir -p new_folder/new_sub_folder
  - if you want to create two folder newly
- mkdir -p friends/{prabhu,john,vignesh}
  - create 3 subfolders in friends

### rmdir

- rmdir [options] dir
- rmdir a/b/c
- rmdir -p a/b/c
- rmdir -pv a/b/c
  - only delete all folder if its don't have files
- rm -r a
  - recursive delete with files also

### cp

- cp [options] source destination
- cp file1.txt file2.txt
- cp file1.txt folder
- cp -i file1.txt file2.txt folder
  - i for interactivate mode
  - it avoids overriding
- cp ../file1.txt ../file2.txt .
  - copy parents files to current directory
  - cp -R dir1 dir3
    - if dir3 not exist, it create dir3 and copies dir1 content into dir3
    - if dir3 already exist, dir1 copied to dir3

### mv

- mv [options] source destination
- mv f1.txt f2.txt
- mv f2.txt dir/
- mv f1.txr dir/f1.txt
  - it overrides the content
- mv dir1 dir2
  - moves dir1 to dir2
- mv dir2 dir3
  - if dir3 not exist, it creates one and moves the content of dir2 in dir3

### less

- showing content for current terminal size
- / searching from top
- ? searching from bottom
- :g goto top
- :G goto bottom
- :n for next occurence

### touch

- touch file.txt
- touch file.txt
  - if file.txt already exist it updates the timestamp of the file

### nano

### sudo

- sudo -s
  - superuser mode

### top

- resource monitoring
- s [sec] - change refresh time in secs
- i - for toggling and showing ideal process
- k [pid] - kill the process

### ps

- ps -ux
  - print current user running process
- ps -aux
  - print all running process
- ps -U prabhu
  - print prabhu user process
- ps -C process_name
  - show instance of process

### kill

- kill -flags pid
- pidof vlc
  - it gives pid of vlc
- kill -KILL pid or kill -9 pid
  - force kill

### echo

- echo prabhu
- to assign a variable
  - name="value"
- echo $name
- echo "some \text"
  - some ext
- echo '\033[0;32m' I am Groot

### chmod

- chmod o+x file.exe
  - o others + do x executable permission for file.exe
- chmod g+x file.exe
  - g group
- chmod g-rw file.exe
  - removing read write permission for group
- chmod ug=rwx file.txt
  - user and group have permission for rwx
- chmod a-rwx
  - for all not permission for rwx
- chmod 777 file.txt
  - octal representation of permission

### which and whatis

- which shows the location
- whatis show short description

### useradd

- sudo useradd name -m -s /bin/bash -g users -c "comments"
- sudo passwd name
- sudo userdel name
- sudo userdel -r name
  - to del home dir also
- groups
- cat etc/groups
- sudo groupadd name
- sudo groupdel name
- sudo gpasswd -a username groupname
- sudo gpasswd -d username groupname

### df

- disk used details
- df
- df -h
- du -h
- du -sh
- free -m for mega byte
- free -g for giga

### watch

- executing command at regular interval
- watch command
- watch -n 1 command

### head and tail

- head - to show top of content
- tail - to show bottom of content
- head log.log - 10 lines
- head -n3 log.log - 3 lines
- tail -f file.log
  - f for follow, it updates last 10 lines

### find

- find dirname -name filename.txt
- find dirname -name filename.\*
- find dirname -name \*.txt
- find dirname -mtime -2
  - it shows files created 2 days ago

### wc

- word count, no of files or count the number of characters
- wc file.txt
- wc -c file.txt
- wc -w file.txt
- wc -l file.txt
- wc -L file.txt

### cal & date

- cal
- date

### running multiple commands

- ls ; pwd
- date; cal; pwd
- date && cal && pwd
- data || cal

### apt

- advanced packaging tool
- cat /etc/apt/source.list
- sudo apt-get autoremove

### ifconfig

- ifconfig

### tar

- tar -cvf filename filename.tar
  c: compress, v: verbos, f: filename
- tar -xvf filename.tar
  x: extract
- tar -czvf filename.tar filename.tar.gz
- tar -xzvf filename.tar.gz

### grep

- global regular expression print
- grep "text" filename
- grep -i "text" filename
  - case insensitive
- grep -n "text" filename
  - with line number
- grep -n "text" file1 file2 file3
- grep -n "text" \*
  - all files in this directory
- grep -v "text" filename
  - show the lines except "text"

### netstat

- netstat
- netstat -a
- netstat -a | less
- netstat -at
  - show tcp connections
- netstat -au
  - show udp connections
- netstat -l
  - show listening ports
- netstat -lt
  - show listening tcp connections
- netstat -lu
  - show listening udp connections
- netstat -s
- netstat -p
  - show pid
- netstat -n
  - show numeric ports
- netstat -c
  - continous status
- netstat -ie
  - is similar to ifconfig
- netstat -an | grep ':80'
