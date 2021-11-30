#!/bin/bash
# set -e
# exec 2>/dev/null

git_push(){
    if [[ $key -ne 1 ]]; 
then
    git push -u origin master
else
    git fetch
    git reset HEAD -- .
    git rebase master
    git push -u origin master --force
fi
}
commit()
{
git add .
if grep -q "nothing to commit" <<< "$(git status)"; then
   echo "No Changes To Backup"
   flag=1
   exit
 fi
if grep -q "modified:" <<< "$(git status)"; then
    msg=$((1 + $RANDOM % 4))
fi
if grep -q "deleted:" <<< "$(git status)"; then
    msg=5
fi
if grep -q "Untracked files:" <<< "$(git status)"; then
    msg=6
fi
if grep -q "No commits yet" <<< "$(git status)"; then
    msg=7
fi
if [[ $flag -ne 1 ]]; 
then
    case "$msg" in
    1)
    git commit -m "refactor"
    ;;
    2)
    git commit -m "Minor changes in code"
    ;;
    3)
    git commit -m "--fix"
    ;;
    4)
    git commit -m "Changes in Code"
    ;;
    5)
    git commit -m "Changes Removed"
    ;;
    6)
    git commit -m "Files Added"
    ;;
    7)
    git commit -m "Initial Commit"
    ;;
    esac
fi
}
check_git_file(){
if grep -q ".git" <<< "$(ls -a)"; then
    commit
    echo "Files commited....."
    git_push
else
    path=$(pwd)
    Repo_name=$(basename $path)
    if grep -q "$Repo_name" <<< "$(gh repo list)"; then
        key=1
        else
        gh repo create $Repo_name --private  --confirm
        rm -rf $Repo_name
        echo "Repo $Repo_name Created...." 
    fi
    echo "Get Initialize......."
    git init
    echo "Files Ready for commit...."
    commit
    echo "Files commited....."
    git remote add origin https://github.com/$username/$Repo_name.git
    git_push
fi
}
check_gh_cmd(){
if ! command -v gh &> /dev/null
then
    echo "  Select the Package ************"
    echo "  1) apt"
    echo "  2) dnf"
    echo "  3) zypper"
    echo "  4) pacman" 
    echo -en 'Please enter your choice: '
    read opt
    case $opt in
        1)
            # curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
            # echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
            # sudo apt update
            sudo apt install gh

            ;;
        2)
            sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
            sudo dnf install gh
            ;;
        3)
            sudo zypper addrepo https://cli.github.com/packages/rpm/gh-cli.repo
            sudo zypper ref
            sudo zypper install gh

            ;;
        4)
            sudo pacman -S github-cli
            ;;
        5)
            break
            ;;
        *) echo "invalid option";;
    esac
    gh auth login
    check_git_file
else
    check_git_file
fi
}
Inital(){
if grep -q "user.name" <<< "$(git config --list)"; then
       username=$(git config --list|grep -Po '(?<=^user.name=)\w*$')
    else
        echo -en "Enter the Username for git:" 
        read username
        $(git config --global user.name $username)
    fi
check_gh_cmd
}
if [[ ! $# -eq 1 && ! $# -ne 0 ]]
then
  Inital
fi

 while [ ! $# -eq 0 ]
do
	case "$1" in
		 -l)
			gh repo list
			exit
			;;
		 download)
			gh repo list |nl
            # echo "$2"
			exit
             
	esac
	shift
done

# 9787ram@123
# rameshravi20597