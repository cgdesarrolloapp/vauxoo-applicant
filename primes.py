"""
PrimeClass with method is_prime checks when integer number is prime number
"""
import math

class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        First validate numbers inder 2 and equals 2, later iterates from 2
        until num_int-1 with temp variant
        """
        # Start evaluation
        if num_int < 2:
            return False
        elif num_int == 2:
            return True
        else:
            temp = math.floor(num_int/2)
            while temp >= 2:
                if num_int % temp == 0:
                    return False
                else:
                    temp = temp-1
            return True
