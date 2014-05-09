try:
    import os
    import json
except ImportError:
    import simplejson as json


#------------------------------------------------------
# Build the HTML to be returned
#------------------------------------------------------
try:
    htmlFile = open("htmlPortlet2.html")
    html = htmlFile.read()
    htmlFile.close()
except IOError:
    html = "Error opening 10 Steps for Event Analysis and Reduction.html"    


# Link to Introduction to Messages
jdata ={"data": [{"id": "htmlData", "htmltext": html }]}

print json.dumps(jdata)
