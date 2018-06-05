
# coding: utf-8

# In[30]:


f = open('p022_names.txt')
lines=sorted(f.read().replace('"','').split(','),key=str)

t=0
for x, y in enumerate(lines):
    t += sum([ord(c)-64 for c in y]) * (x + 1)
print(t)

    

