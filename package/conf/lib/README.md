# lua lib of myopenresty
---
## iconv

### Instructions

fork from [https://github.com/AlexWoo/lua-iconv](https://github.com/AlexWoo/lua-iconv)

Convert the encoding of characters from one codeset to another using iconv in C Lib

This module based on luajit ffi, must run with luajit

### API

- iconv.new(tocode, fromcode)

	Create a iconv object converting the encoding of characters in file from fromcode codeset to tocode codeset

	If successd return iconv object and nil errno; if failed return nil iconv object and errno of C-Lang

- iconv:iconv(text)

	Covert text following as iconv.new set.

	If successd, return string after covertion and nil errno; if failed, return nil string and errno of C-Lang

### Example

Convert gb2312 to utf8 as below

	local iconv = require("iconv")
	local cd = iconv.new("utf8", "gb2312")
	str = cd:iconv(text)

## uuid

### Instructions

fork from [https://github.com/AlexWoo/lua-uuid](https://github.com/AlexWoo/lua-uuid)

generate uuid for lua, use libuuid of C library:

- uuid1: use uuid_generate_time
- uuid4: use uuid_generate_random

notice: uuid1 may expose your mac address of your server

This module based on luajit ffi, must run with luajit

### Dependence

depend on libuuid-devel, install:

	yum install -y libuuid-devel

### API

- uuid1()

	return UUID object of the alternative algorithm which uses the current time and the local ethernet MAC address (if available)

- uuid4()

	return UUID object of the all-random UUID format

- uuid_hex()

	return 32 bytes hex string of UUID just like: 1e15b616fa8d4087820926fde1c9bf73

- uuid_str()

	return 36 bytes uuid string of UUID just like: 1e15b616-fa8d-4087-8209-26fde1c9bf73

- uuid_num()

	return 128 bit number of UUID just like: 3.9989571326686e+37. It my loss accuracy

### Example

	local uuid = require("uuid")
	
	uu = uuid:uuid1()
	hex = uu:uuid_hex()
	str = uu:uuid_str()
	num = uu:uuid_num()
	
	print(hex)
	print(str)
	print(num)

## http client

### Instructions

fork from [https://github.com/pintsized/lua-resty-http](https://github.com/pintsized/lua-resty-http)

Lua HTTP client base on cosocket driver of Openresty

Include http.lua and http_headers.lua

### API

For details in [https://github.com/pintsized/lua-resty-http](https://github.com/pintsized/lua-resty-http)
