#! /bin/bash

mariadb --user=$MARIA_USER --password=$MARIA_PASS --database=classiccharacters --execute="SELECT COUNT(*) FROM creature_respawn;"
