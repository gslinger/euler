from functools import wraps
import time


def timeit(func):
    @wraps(func)
    def wrapper(*args, **kwargs):
        beg_ts = time.time()
        ret_val = func(*args, **kwargs)
        end_ts = time.time()
        print("Elapsed time for {}: {}".format(func.__name__, (end_ts - beg_ts)))
        return ret_val
    return wrapper
