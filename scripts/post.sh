#!/bin/sh
rake generate
#rake preview
rake deploy
git add .
git commit -m 'update'
git push origin source

