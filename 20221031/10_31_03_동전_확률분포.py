# -*- coding: utf-8 -*-
"""10/31_03_동전 확률분포.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1n_DaERQZrbqNbA-CdN7fPVBebXHEy2K-

8-25.이산확률분포의 분산, 표준편차

동전 한 개를 세번 던져서 뒷면이 나오는 횟수를 확률변수 X라고 합시다. 이때, X의 분산과 표준편차를 구하세요.
"""

import sys
print(sys.version)

!python  --version

import math
print(math.factorial(5))

def combination_count(n,r):
  return math.factorial(n) //math.factorial(n-r)

print(combination_count(4, 2))

def combination_count(n,r):
  return math.factorial(n) //(math.factorial(n - r)*math.factorial(r) )

print(combination_count(4, 2))

print(combination_count(4, 0))

print("동전 한갸를 n번 던져서 뒷면이 나올 확률은 ? \n")

n=0
print("던지는 횟수를 입력하세요.")
n = int(input())
type(n)

total_n= pow(2,n)
print(total_n)

avg=0.0
for x in range(n+1):
  P =  combination_count(n,x)/ total_n
  avg += x * P
  print("P(",x, ")=", P)
print("average =", avg)

for x in range(n+1):
  P = combination_count(n,x)/ total_n
  var = (x- avg)*(x-avg) * P
print("variance=", var)

