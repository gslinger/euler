
# coding: utf-8

# In[22]:


for x in range(100000, 1000000):
    if set(str(x)) == set(str(6*x)) == set(str(5*x)) ==     set(str(4*x)) == set(str(3*x)) == set(str(2*x)):
            print(x)
            break
   
# 62 ms ± 895 µs per loop (mean ± std. dev. of 10 runs, 10 loops each)

