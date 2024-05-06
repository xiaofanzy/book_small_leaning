# 字符串的匹配

import re
charStr = "123abc";
print(re.search("[0123456789]",charStr) != None);
print(re.search("^[12]$","12") != None);

print(re.search("^[0-9]$","2") != None);
print(re.search("^[0-9a-zA-Z]$","a") != None);
print(re.search("^[0-9a-zA-Z]+$","\x41") != None);
print(re.search("^[\x00-\x7F]$","\x41") != None);

print(re.search("^[-09]$","3") != None);
print(re.search("^[-09]$","-") != None);

print(re.search(r"^[0\-9]+$","-") != None);
