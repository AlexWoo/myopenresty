#!/usr/bin/python

import platform

if __name__ == '__main__':
    dist = platform.dist()

    if dist[0] == 'centos':
        print('centos' + dist[1].split('.')[0])
    else:
        print('unknown')
