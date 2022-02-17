#!/usr/bin/env bash

# Description: mkdirs and [file]
# Shells supported: GNU Bash
# Inspiration: https://github.com/tanrax/terminal-AdvancedNewFile

# DEBUG OPTIONS
set -euo pipefail

# * ARGUMENTS

arguments=("$@")
path="${arguments[0]}"
verbose="${arguments[1]}"

# * FUNCTIONS
get_last_char()
{
    echo "${path: -1}"
}

last_char_is_dir()
{
    [[ $(get_last_char) == "/" ]]
}

get_filename()
{
    echo ${path##*/}
}

get_dir_path()
{
    local result

    result=$(last_char_is_dir && echo "$path" || echo ${path%$(get_filename)})

    echo $result
}

create-dirs()
{
    mkdir -p $(get_dir_path)
}

create-file()
{
    echo '' > "$path"
}

run_verbose()
{
    if [[ "$verbose" == "--verbose" ]]; then
	echo "Path  --> $path"
	echo "Directory --> $(get_dir_path)"
	echo "Filename  --> $(get_filename)"
    fi
}

run()
{
    run_verbose

    create-dirs
    create-file
}

# * RUN

run
