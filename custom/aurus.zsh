function rma {
    DIR=$(pwd)
    cd /home/srijan/Documents/Workspaces/srijan_html5/frontend/www/assets/ && rm -rf *
    cd $DIR
}

function setup {
    sudo service openfire $1
    sudo service WowzaMediaServer $1
}
