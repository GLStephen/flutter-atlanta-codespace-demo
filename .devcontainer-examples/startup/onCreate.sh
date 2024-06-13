#!/bin/bash

########################################################################
#
# Command Order is Important
# DB is Slow to Start so Run NPM CI first to give it time
#
########################################################################

echo "Starting Up"

# run these first to give time for all the networking and mysql to startup
echo "node ci"
npm ci
#echo "build dev"
# not neccessary always and causes unecessary merge changes, error prone, etc.
#npm run dev
# echo "Setting PHPCS"
# composer global require "squizlabs/php_codesniffer=*"

# db should be fully up and accesssible by now
echo "Grant Privileges"
mysql --protocol=TCP -u root -h mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'dev'@'%'"
mysql --protocol=TCP -u root -h mysql -e "FLUSH PRIVILEGES"

echo "Creating pw_dev"
mysql --protocol=TCP -u root -h mysql cpminator-dev </workspaces/cpminator/.devcontainer/schemas/cpminator-schema.sql
echo "Loading Data"
mysql --protocol=TCP -u root -h mysql cpminator-dev </workspaces/cpminator/.devcontainer/schemas/migrations.sql

echo "Setting Up Laravel"
ln -sf .env-codespaces .env

echo "composer install"
composer install --no-interaction
echo "Seeding etc."
# run the pre-migration seeder to ensure some data is there
php artisan db:seed PreMigrationSeeder
# run migrations ahead of other seeders
php artisan migrate
php artisan db:seed InitialSeeder
php artisan db:seed CommonSizesSeeder
php artisan db:seed ConfigV3Seeder
