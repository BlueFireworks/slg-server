#!/usr/bin/env python
# -*- coding: utf-8 -*-

### 需要安装pyExcelerator
### http://sourceforge.net/projects/pyexcelerator/
### 解压后执行 python setup.py install
###
from pyExcelerator import *
import sys
import string

# 修改gd. xls文件夹路径
gd_dir = ""

# 项目代码路径
project_dir = "/Users/zhuoyikang/Project/galaxy-empire-server-2/data/"


# 导出文件配置
config = [
    # 建筑数据配置
    {"path":"Dexter_ac.xls", "export": {"KEY_monsters": "ac/ac_monster.csv"}},
    ]


for c in config:
    for sheet_name, values in parse_xls(gd_dir+c["path"], "cp1251"): # parse_xls(arg) -- default encoding
        key = sheet_name.encode("utf8", "backslashreplace")
        if not key in c["export"].keys():
            continue
        path = c["export"][key]
        print  "export ", key, "to", path
        matrix = [[]]
        for row_idx, col_idx in sorted(values.keys()):
            v = values[(row_idx, col_idx)]
            # print row_idx, col_idx, v
            if isinstance(v, unicode):
                v = v.encode("utf8", "backslashreplace")
            else:
                v = str(v)
            v = v.replace(" ", "").replace("\r", "").replace("\n", "")
            try:
                v = (int)(string.atof(v))
            except:
                v = str(v)
            v = str(v)
            last_row, last_col = len(matrix), len(matrix[-1])
            while last_row-1 < row_idx:
                matrix.extend([[]])
                last_row = len(matrix)
            while last_col < col_idx:
                matrix[-1].extend([''])
                last_col = len(matrix[-1])

            matrix[-1].extend([v])
        f = open(project_dir+path, "w")
        if c.has_key("handle"):
            c["handle"](matrix, f)
        else:
            for row in matrix:
                csv_row = ";".join(row)
                f.write(csv_row+"\n")
        f.close()


