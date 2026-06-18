#! /bin/bash

mariadb --user=$MARIA_USER --password=$MARIA_PASS --database=classiccharacters --execute="TRUNCATE creature_respawn;"
