#!/bin/sh

#  CopyFromServer.sh
#  
#
#  Created by Rian Rainey on 6/21/12.
#  Copyright (c) 2012 Built Well Labs, LLC. All rights reserved.

echo "Welcome to Rian Rainey's SCP Script File.";
echo "scp [options] [source] [destination]";

echo "Enter location of file/folder on the server you would like to copy. (Ex: username@servername.com:/var/www/vhosts/clientname/httpdocs/cms_name) : ";
read SERVER_LOCATION;

echo "Enter location where you want to save the copied file(s). (Ex: /Users/username/Desktop) : ";
read LOCAL_LOCATION;

echo "scp -r $SERVER_LOCATION $LOCAL_LOCATION";

scp -r $SERVER_LOCATION $LOCAL_LOCATION;
