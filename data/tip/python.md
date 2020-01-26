# Python

## Links

* [https://pypi.org/](https://pypi.org/)

## tips

指定文件编码

```python
#!/usr/bin/env python3
# -*- coding: utf-8 -*-
```

bytes to string

```python
 b"abcde".decode("utf-8")
 b'\xe4\xb8\xad\xff'.decode('utf-8', errors='ignore')
```

```python
'ABC'.encode('ascii')
'中文'.encode('utf-8')
```

```python
>>> len('ABC')
3
>>> len('中文')
2
>>> len(b'ABC')
3
>>> len(b'\xe4\xb8\xad\xe6\x96\x87')
6
>>> len('中文'.encode('utf-8'))
6
```

char to int

```python
ord('A')
```

int to char

```python
chr(66)
```

format

```python
print('%2d-%02d' % (3, 1))
print('%.2f' % 3.1415926)
'Hello, {0}, 成绩提升了 {1:.1f}%'.format('小明', 17.125)
```

list

```python
>>> classmates = ['Michael', 'Bob', 'Tracy']
>>> len(classmates)
3
>>> classmates[len(classmates) - 1]
'Tracy'
>>> classmates[-1]
'Tracy'
# 往list中追加元素到末尾
>>> classmates.append('Adam')
>>> classmates
['Michael', 'Bob', 'Tracy', 'Adam']
# 把元素插入到指定的位置，比如索引号为1的位置
>>> classmates.insert(1, 'Jack')
>>> classmates
['Michael', 'Jack', 'Bob', 'Tracy', 'Adam']
# 要删除list末尾的元素
>>> classmates.pop()
'Adam'
>>> classmates
['Michael', 'Jack', 'Bob', 'Tracy']
```

tuple

```python
>>> classmates = ('Michael', 'Bob', 'Tracy')
>>> type(classmates)
<class 'tuple'>
>>> len(classmates)
3
>>> type(())
<class 'tuple'>
>>> type((1,))
<class 'tuple'>
>>> len(())
0
>>> len((1,))
1
```

if

```python
if <条件判断1>:
    <执行1>
elif <条件判断2>:
    <执行2>
elif <条件判断3>:
    <执行3>
else:
    <执行4>

age = 3
if age >= 18:
    print('adult')
elif age >= 6:
    print('teenager')
else:
    print('kid')

if x:
    print('True')

x 为 False, 0, '', [], (), {}, None 则判断为False, 否则判断为True
```

循环

```python
for...in

names = ['Michael', 'Bob', 'Tracy']
for name in names:
    print(name)

>>> range(5)
range(0, 5)
>>> type(range(5))
<class 'range'>
>>> list(range(10))
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> list(range(0,10, 2))
[0, 2, 4, 6, 8]

sum = 0
for x in range(101):
    sum = sum + x
print(sum)

sum = 0
n = 99
while n > 0:
    sum = sum + n
    n = n - 2
print(sum)

break

n = 1
while n <= 100:
    if n > 10: # 当n = 11时，条件满足，执行break语句
        break # break语句会结束当前循环
    print(n)
    n = n + 1
print('END')

n = 0
while n < 10:
    n = n + 1
    if n % 2 == 0: # 如果n是偶数，执行continue语句
        continue # continue语句会直接继续下一轮循环，后续的print()语句不会执行
    print(n)
```

List

```python
for i, value in enumerate(['A', 'B', 'C'])

```

Dict

```python
d = {'Michael': 95, 'Bob': 75, 'Tracy': 85}
d['Michael']

'Thomas' in d
d.get('Thomas') or -1
d.get('Thomas', -1)

# 要删除一个key，用pop(key)方法，对应的value也会从dict中删除
d.pop('Bob')

# 在Python中，字符串、整数等都是不可变的，因此，可以放心地作为key

d.values()
for k, v in d.items():
    pass
```

set

```python
s = set([1, 2, 3])

>>> s1 = set([1, 2, 3])
>>> s2 = set([2, 3, 4])
# 交集
>>> s1 & s2
{2, 3}
# 并集
>>> s1 | s2
{1, 2, 3, 4}
# 差集
>>> s1 - s2
{1}
```

函数参数

```python
Python中定义函数，参数顺序必须是：必选参数、默认参数、可变参数、命名关键字参数和关键字参数
```

装饰器

```python

# decorator，所以接受一个函数作为参数，并返回一个函数

def log(func):
    def wrapper(*args, **kw):
        print('call %s():' % func.__name__)
        return func(*args, **kw)
    return wrapper

@log
def now():
    print('2015-3-25')

>>> now()
call now():
2015-3-25

把@log放到now()函数的定义处，相当于执行了语句：

now = log(now)

如果decorator本身需要传入参数，那就需要编写一个返回decorator的高阶函数
def log(text):
    def decorator(func):
        def wrapper(*args, **kw):
            print('%s %s():' % (text, func.__name__))
            return func(*args, **kw)
        return wrapper
    return decorator

@log('execute')
def now():
    print('2015-3-25')

>>> now = log('execute')(now)
```

## libs

uuid

```python
import uuid
uuid.uuid4().hex
```