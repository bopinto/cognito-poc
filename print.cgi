#!/usr/bin/env python3

import os

d = os.environ
k = d.keys()

print("Content-type: text/html\n\n")

print("<HTML><Head><TITLE>Print Env Variables</TITLE></Head><BODY>")
print("<h1>Environment Variables</H1>")
for item in k:
    print("<p><B>%s</B>: %s </p>" % (item, d[item]))
print("</BODY></HTML>")