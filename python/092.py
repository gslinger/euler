
# coding: utf-8

# In[1]:


c = 1
for y in range(1, 10000001):
    while y != 1 and y != 89:
        y = sum([pow(int(x),2) for x in list(str(y))])
        if y == 89:
            c += 1
print(c)

