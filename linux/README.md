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
