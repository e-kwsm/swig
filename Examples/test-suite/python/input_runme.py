from input import *

f = Foo()
if f.foo(2) != 4:
    raise RuntimeError

if f.foo(None) is not None:
    raise RuntimeError

if f.foo() is not None:
    raise RuntimeError

if sfoo("Hello") != "Hello world":
    raise RuntimeError

if sfoo(None) is not None:
    raise RuntimeError

if sfoo() is not None:
    raise RuntimeError
