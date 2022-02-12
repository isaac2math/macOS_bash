#!/bin/bash

docker_setup () {

    #homebrew install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo $'\nHomebrew installed\n'

    brew update && brew upgrade && brew install aom json-c numpy arpack krb5 octave assimp leptonica open-mpi autoconf leveldb openblas brotli libarchive openexr ca-certificates libb2 openjpeg cairo libcerf openldap cfitsio libdap openssl@1.1 curl libde265 opus dbus libevent pandoc docbook libffi pango docbook-xsl libgeotiff pcre double-conversion libgit2 pcre2 eigen libheif pixman epsilon libidn pkg-config epstool libidn2 plotutils expat liblqr poppler fftw libmpc poppler-qt5 fig2dev libnghttp2 popt flac libogg portaudio fltk libomp proj fontconfig libpng proj@7 freetype libpq pstoedit freexl libpthread-stubs pyqt@5 fribidi librttopo python@3.9 gcc libsndfile qhull gd libspatialite qrupdate gdal libssh2 qscintilla2 gdbm libtiff qt geos libtool qt@5 gettext libunistring readline ghostscript libunwind-headers rtmpdump giflib libvmaf shared-mime-info gl2ps libvorbis snappy glib libx11 sqlite glpk libxau suite-sparse gmp libxcb sundials gnu-getopt libxdmcp szip gnuplot libxext tbb gobject-introspection libxml2 tcl-tk gperftools libxrender tesseract graphicsmagick little-cms2 texinfo graphite2 lua udunits harfbuzz lz4 unixodbc hdf5 lzo v8 hunspell m4 webp hwloc md4c wget icu4c metis x265 imagemagick minizip xerces-c imath mpdecimal xmlto isl mpfr xorgproto jasper netcdf xz jbig2dec netpbm zstd jpeg nspr jpeg-xl nss cmake r julia

    echo $'\nHomebrew Formulae installed\n'

    brew install clion mactex skim slack dropbox miniforge sublime-text firefox obs teamviewer handbrake pycharm visual-studio-code lyx rar xquartz macs-fan-control rstudio zoom

    echo $'\nHomebrew Cask installed\n'

    #Python
    source /opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh

    conda update --all -y

    echo $'\nPython updated\n'

    #R update
    echo $'r = getOption("repos")\nr["CRAN"] = "https://mirror.aarnet.edu.au/pub/CRAN/"\noptions(repos = r)\nupdate.packages(ask=FALSE)' >> ~/Downloads/update.R

    Rscript ~/Downloads/update.R

    rm -rf ~/Downloads/update.R

    #Julia update
    echo $'#!/root/julia/bin/julia\nusing Pkg\nPkg.update()\n' >> ~/Downloads/update.jl

    chmod a+x ~/Downloads/update.jl

    ~/Downloads/update.jl

    rm -rf ~/Downloads/update.jl

    echo $'\nJulia updated\n'

}

docker_setup
