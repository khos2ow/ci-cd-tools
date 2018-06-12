#!/bin/bash
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

EXTRA_LINE=""

print_title() {
    local version_label=""
    if [[ "$1" = *":" ]]; then
        version_label=""
    else
        version_label=" version:"
    fi
    echo -e "${EXTRA_LINE}\e[1;34m$1${version_label}\e[0m"
}

print_title "system information:"
cat /etc/*-release

EXTRA_LINE="\n"

print_title "bash"
bash --version

print_title "sudo"
sudo --version

print_title "gcc"
gcc --version

print_title "docker"
docker version

print_title "git"
git --version

print_title "java"
java -version

#print_title "golang"
#go version

print_title "ruby"
ruby --version

print_title "python"
python --version

print_title "python3"
python3 --version

print_title "pip"
pip --version

print_title "virtualenv"
virtualenv --version

print_title "maven"
mvn --version

print_title "gradle"
gradle --version

print_title "openssl"
openssl version

print_title "curl"
curl --version

print_title "wget"
wget --version

print_title "rsync"
rsync --version

print_title "tar"
tar --version

print_title "gzip"
gzip --version

print_title "zip"
zip --version

print_title "vim"
vim --version

print_title "jq"
jq --version

print_title "locate"
locate --version

print_title "which"
which --version

echo ""
