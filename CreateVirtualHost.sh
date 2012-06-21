#!/bin/sh

#  CreateVirtualHost.sh
#  This file just creates a local virtual hosts in XAMPP
#
#  Created by Rian Rainey on 5/4/12.
#  Copyright (c) 2012 Built Well Labs, LLC. All rights reserved.
VHOSTSFILE="/Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf";

# TODO: Create new entry in hosts file
# sudo vi /etc/hosts

echo 'Enter client short name (Acme Corporation => acmecorporation):'; read CLIENTNAME;

echo 'Enter virtual hosts domain name (dev.acmecorporation.com):'; read DOMAINNAME;

echo 'Enter location of root directory (/Users/username/path/to/cms/name/wordpress):'
read LOCATION;

# TODO: Create new virtual hosts entry in XAMPP
TEXT="\n
<VirtualHost *:80>
        DocumentRoot \"${LOCATION}/wordpress\"
        ServerName $DOMAINNAME
        ErrorLog \"logs/$CLIENTNAME-error_log\"
        CustomLog \"logs/$CLIENTNAME-access_log\" common
</VirtualHost>";

echo "Going to create virtual host. Press y to continue, any other key to abort"
read PROCEED

if [ "$PROCEED" != "y" ]; then
exit
fi

# Directory of vhosts file
echo "$TEXT" >> /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf;