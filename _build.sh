#!/bin/bash

jekyll _build && rsync -acvz --delete _build/* linode:/var/www/www/
