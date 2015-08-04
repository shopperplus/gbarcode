#!/usr/bin/env ruby
#
#  Created by Angel Pizarro on 2007-03-15.
#  Copyright (c) 2007. All rights reserved.
require 'mkmf'
create_makefile('gbarcode')
# 避免gcc 4.9.1下的编译错误（也与mkmf生成的Makefile有关）
makefile = File.open('Makefile').read
makefile.gsub!('-Werror=format-security', '')
File.open('Makefile', 'w').write makefile