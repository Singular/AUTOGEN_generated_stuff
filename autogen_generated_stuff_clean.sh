#!/bin/sh

[ -d ../libpolys ] || { echo "the subdirectory libpolys does not exist in the parent directory; this does not seem to be the directory Singular/AUTOGEN_generated_stuff"; exit 1;}

. ./autogen_generated_stuff_data

cd ..

[ -d "${DIR_autogen}" ] || { echo "the subdirectory ${DIR_autogen}; please invoke the script autogen_generated_stuff_clone.sh in the Singular root directory"; exit 1;}

for file in ${autogen_generated_stuff}; do
    if [ -L "${file}" ]; then
	rm -vf "${file}"
    fi;
done
