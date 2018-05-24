
# coding: utf-8

# In[16]:


max = 0
for i in range(1,100):
    for j in range(1,100):
        x = sum(map(int, str(i**j)))
        if x > max:
            max = x
print(max)

