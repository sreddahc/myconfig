#!/bin/sh

python_status(){

    local python_version=$(command python --version | command sed 's/Python //')
    local venv_name=$(command basename "${VIRTUAL_ENV}")

    echo "🐍 $python_version $venv_name"

}

python_status