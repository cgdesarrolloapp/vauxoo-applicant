"""
PrimeClass with method is_prime checks when integer number is prime number
"""


class PrimeClass(object):
    """
    Your class documentation here
    """

    def is_prime(self, num_int):
        """
        First validate numbers inder 2 and equals 2, later iterates from 2
        until num_int-1 with temp variant
        """
        if num_int < 2:
            return False
        for valor in range(2, num_int):
            if num_int % valor == 0:
                return False
            return True
