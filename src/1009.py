# -*- coding: utf-8 -*-

name = input()
salary  = float(input())
sold = float(input())
total = salary + (sold * 0.15)
print("TOTAL = R$ {:.2F}".format(total))
