
# coding: utf-8

# In[28]:


from math import factorial 

def nCr(n, r):
    return factorial(n)//(factorial(r)*factorial(n-r))

c=0
for i in range(23, 101):
    for j in range(4, i-3):
        if nCr(i, j) > 1000000:
            c += 1
print(c)


# In[30]:


c=0
for i in range(23, 101):
    for j in range(4, i-3):
        if nCr(i, j) > 1000000:
            c += 1
print(c)

