# Python

I am going to summarize a few important ideas but this will not be an comprehensive introduction to Python. If you want that, please look to the guides at [Real Python](https://realpython.com/learning-paths/python-basics/) or the textbook [Think Python](https://greenteapress.com/wp/think-python-2e/) by Downey.

## Basics

### Installation

I recommend following the instructions at https://docs.anaconda.com/miniconda/install/ to get miniconda. Alternatively, you can use the full anaconda distribution, manage your own environments and dependancies with pip/pyenv, or you can use parts of this website via binder. 

### Hello World

```python
print("Hello, World!")
```

### Variable assignment

```python
x = 1
y = 4
z = x
```

```python
print(x, z)
z = 5
print(x, z)
```

### Comments

Comments are lines that start with `#`. There are no block comments like there are in C. However, there are multiline strings that look like block comments. 

If you make a python string, but do not assign it to a variable, then it acts like similar to a block comment.

```python
"""This is a multiline string!
It is really helpful for documenting functions.
"""
```

### Types

* Text Type:	str
* Numeric Types:	int, float, complex
* Sequence Types:	list, tuple, range
* Mapping Type:	dict
* Set Types:	set, frozenset
* Boolean Type:	bool
* Binary Types:	bytes, bytearray, memoryview
* None Type:	NoneType

```python
print(type(var))
```

```
>>> x = [1,2,3]
>>> z = x
>>> z[1]=5
>>> x
[1, 5, 3]
```

```{note}
However, Python is "duck" typed: if it walks like a duck and talks like a duck, it is a duck. This loose typing can confuse some people, but you will find out that it can be really helpful for types to build off each other and fall back to a more basic type via duck typing rather than a lower level of code needing to know about all extensions to lists. 
```

### if ... else

```python
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")
```


#### Keywords

There are useful keywords like the boolean operators `and`, `or`, and `not`. Additionally it is best practice to use the the comparison operator `is` rather than checking for equality. This is especially true for to check if a variable is `None`. Finally, the keyword `pass` is sometimes used.

For more, check out [w3schools](https://www.w3schools.com/python/python_ref_keywords.asp) or [Read Python](https://realpython.com/python-keywords/).

### for loops

Python has a for loop and a while loop, but typically we use for-in loops. The syntax is as follows:

```python
for item in list:
  print(item)
```

```python
for i in range(5):
  print(i)
```

For loops, check out the keywords `break` and `continue`.

You can even use Python to write C. Please don't.

```python
a = ['Mary', 'had', 'a', 'little', 'lamb']
for i in range(len(a)):
    print(i, a[i])
```
In this case, we used the built in function `len` to get the length of an object. Check what types work with `len`?

```{note}
If you are using a for loop---or its variants---in python, you are likely doing something wrong. It may be someone else's fault, but something is not right.
```

For more advanced uses, you may want to use the [match](https://docs.python.org/3/tutorial/controlflow.html#match-statements) keyword.

### Functions & Classes

If there is a bit of code you want to reuse, like calculating the a chi-square you want to minimize, the standard practice is to put it into a function. 

```{important}
If you are copying and pasting while writing your code, you are likely doing something wrong and you should probabliy make a function or a class.
```

Functions are defined with the `def` keyword as seen here:

```python
def function_name(var1, var2):
  return var1*var2
```

As you advance in your Python skills, you will learn how to take this simple function and adorn it with additional useful features such as docstrings, keyword only arguments, and decorators. We will address each of these as needed later in the course.

Python is an object oriented language, but we will mostly use its functional/scripting language features. So know that there are `class`es but we will not use them much.


## More Advanced Python

### String formating

If you have a variable that you want to print with a specific formatting, like a float that you want to report with the correct significant digits, you will use string formatting and f-strings. Check out [w3school's](https://www.w3schools.com/python/python_string_formatting.asp) and [real python's](https://realpython.com/python-string-formatting/) tutorials on this topic.

### Modules

```python
import this
```

### Scope

```python
x = 300

def myfunc():
  x = 200
  print(x)

myfunc()

print(x)
```

```python
def myfunc():
  global x
  x = 300

myfunc()

print(x)
```

### try except finally

We will occasionally use `try` blocks to deal with errors. You can read up on them in detail at [w3school](https://www.w3schools.com/python/python_try_except.asp).

### Reading files

## Suggested Reading

* [Think Python](https://greenteapress.com/wp/think-python-2e/)
* [Real Python](https://realpython.com/learning-paths/python-basics/) 
* * Vasiliev "Python For Data Science" chapters 1 & 2
* https://docs.python.org/3/tutorial/controlflow.html#match-statements
* https://www.w3schools.com/python/default.asp
* https://www.w3schools.com/python/python_try_except.asp
* https://www.w3schools.com/python/python_ref_keywords.asp
* https://www.w3schools.com/python/python_string_formatting.asp
* https://realpython.com/python-keywords/
* https://realpython.com/python-string-formatting/
