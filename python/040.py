
# coding: utf-8

# In[14]:


a = ''
for x in range(1, 200000):
    a += str(x)

ans = int(a[0]) * int(a[9]) * int(a[99]) * int(a[999]) * int(a[9999]) * int(a[99999]) * int(a[999999])

print(ans)

