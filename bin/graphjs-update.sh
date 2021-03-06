#/bin/sh
cd /var/local/graphjs-website
git stash
git pull origin master
sed -i 's/process.env.PORT/8080; \/\//g' app/server.js
git submodule foreach 'git pull origin master'

cd /var/local/graphjs-website-8081
git stash
git pull origin master
sed -i 's/process.env.PORT/8081; \/\//g' app/server.js 
git submodule foreach 'git pull origin master'

cd /var/local/graphjs-website-8082
git stash
git pull origin master
sed -i 's/process.env.PORT/8082; \/\//g' app/server.js 
git submodule foreach 'git pull origin master'

cd /var/local/graphjs-website-8083
git stash
git pull origin master
sed -i 's/process.env.PORT/8083; \/\//g' app/server.js
git submodule foreach 'git pull origin master'
