# Python

I am going to summarize a few important ideas but this will not be an comprehensive introduction to Python. If you want that, please look to the guides at [Real Python](https://realpython.com/learning-paths/python-basics/) or the textbook [Think Python](https://greenteapress.com/wp/think-python-2e/) by Downey.

## Basics

### Installation

You can use this notebook or 

### Hello World

```python
print("Hello, World!")
```

### Comments

### Types

* Text Type:	str
* Numeric Types:	int, float, complex
* Sequence Types:	list, tuple, range
* Mapping Type:	dict
* Set Types:	set, frozenset
* Boolean Type:	bool
* Binary Types:	bytes, bytearray, memoryview
* None Type:	NoneType

print(type(var))

### if ... else

### for loops

### functions

## More Advanced Python

### String formating

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

### Reading files

## Suggested Reading
