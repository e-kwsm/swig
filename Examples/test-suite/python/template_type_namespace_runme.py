from template_type_namespace import *

if type(foo()[0]) is not type(""):
    raise RuntimeError
