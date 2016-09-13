# -*- coding: utf-8 -*-

a, b, c = map(int, input().split(' '))

maiorAB = int((a + b + abs(a - b)) / 2)

print("{} eh o maior".format(c if c > maiorAB else maiorAB))
