# My Openresty
---
## Install Openresty Package

location /package

	install_openresty [options]

	options support:

		--help          print this help document
		
		--prefix=PATH   path where ORGINAL openresty install
		--user=user     user account to install openresty
		
		--force-reinstall
		                igore openresty allready installed
		
		--conf=PATH     config dir for user
		
		--package=GZ| DIR| URL
		                openresty installed package

use this package:

- it will install openssl-devel package with yum
- it will install pcre-devel package with yum
- it will install libdrizzle under /usr/local/lib
- it will install openresty package, then create an user and copy nginx dir of openresty to user

