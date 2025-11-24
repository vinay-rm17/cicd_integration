from src.myapp.calc import add, multiply
def test_add_positive():
    assert add(2,3)==5
def test_add_negative():
    assert add(-2,-3)==-5
def test_muliply():
    assert multiply(2,3)==6
