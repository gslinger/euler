
import time

def timeit(func):
    def wrapper(*args, **kwargs):
        beg_ts = time.time()
        retval = func(*args, **kwargs)
        end_ts = time.time()
        print("Elapsed time for {}: {}".format(func.__name__, (end_ts - beg_ts)))
        return retval
    return wrapper