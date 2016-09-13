# -*- coding: utf-8 -*-

line1 = input()
line2 = input()
sum = 0

for values in [line1, line2]:
    code, units, price = values.split(' ')
    sum += int(units) * float(price)

print("VALOR A PAGAR: R$ {:.2f}".format(sum))
