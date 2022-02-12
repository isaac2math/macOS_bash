#!/bin/bash

mac_update () {

    #system-wide update
    brew update && brew upgrade && brew cleanup && brew cleanup -s

    echo $'\nUpdate done in Homebrew\n'

    #Python update
    source /opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh

    conda update --all -y

    echo $'\nUpdate done in Python\n'

    #R update
    echo $'r = getOption("repos")\nr["CRAN"] = "https://mirror.aarnet.edu.au/pub/CRAN/"\noptions(repos = r)\nupdate.packages(ask=FALSE)' >> /Users/ning/Dropbox/Working_Directory/Docker/setup_bash/update.R

    Rscript /Users/ning/Dropbox/Working_Directory/Docker/setup_bash/update.R

    rm -rf /Users/ning/Dropbox/Working_Directory/Docker/setup_bash/update.R

    echo $'\nUpdate done in R\n'

    #Julia update
    echo $'#!/usr/local/bin/julia\nusing Pkg\nPkg.update()\n' >> /Users/ning/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    chmod a+x /Users/ning/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    /Users/ning/Dropbox/Working_Directory/Docker/setup_bash/update.jl

    echo $'\nUpdate done in Julia\n'

    rm -rf /Users/ning/Dropbox/Working_Directory/Docker/setup_bash/update.jl

}

mac_update
