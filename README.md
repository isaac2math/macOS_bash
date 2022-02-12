# my bash files for installing necessary machine learning and data science packages on macOS

the file includes the installation and fine tuning of 

* Python (via Anaconda or Miniforge, depending on whether your CPU is x86-64 or arm) 
* R
* Julia
* Octave
* MacTeX
* all necessary C++ files (Fortran, MKL, openBLAS, etc) 


## step 0: install macOS

## step 1: run docker_setup.sh

Before you start, save mac_setup.sh and mac_update.sh on your Documents folder 

then run it using the following command in terminal

<br>

    bash ~/Documents/mac_setup.sh

# step 2: routine update check

After you finish the previous step, you can automatically do the Homebrew/R/Julia/Python/... update using mac_check.sh
  
<br>

    bash ~/Documents/mac_update.sh