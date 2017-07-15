"""
CalculatorClass gets a number list
and return the sum of each one of them
"""


class CalculatorClass(object):
    """
    With a for cicle the num_list retreive each one
    of the elements wich is sum with the acum variable.
    """

    def sum(self, num_list):
        """
        num_list is the list of number wich will be sum
        number variant will have each value of the num_list numbers
        suma will sum all the values
        """
        suma = 0
        for number in num_list:
            suma = number + suma
        return suma
