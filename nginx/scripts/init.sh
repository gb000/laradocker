#!/bin/bash
echo -e '\033[01;32mLaradocker_ByGuiBressan\033[00;37m'
sleep 5

cd /app/

echo -e '\033[01;32mSetting_Permissions\033[00;37m'
sleep 1

find * -type d -exec chmod 755 {} \;
find * -type f -exec chmod 644 {} \;

cd /app/laravel

chmod 777 -R storage

echo -e '\033[01;32mAtualizando_Laravel\033[00;37m'
sleep 1

composer update

echo -e '\033[01;32mGerando_Chaves_Laravel\033[00;37m'
sleep 1

php artisan key:generate

echo -e '\033[01;32mMigrando_Database\033[00;37m'
sleep 1
php artisan migrate

echo -e 
tail -f /dev/null
