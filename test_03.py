import math


def isPowerOfThree(n: int) -> bool:
    if n < 0:
        return False

    val = 1
    while True:
        if math.pow(3, val) == n:
            return True
        elif math.pow(3, val) < n:
            val += 1
        elif math.pow(3, val) > n:
            return False


def main() -> None:
    print(isPowerOfThree(27))
    print(isPowerOfThree(0))
    print(isPowerOfThree(-3))
    print(isPowerOfThree(10))


if __name__ == '__main__':
    main()


# isPowerOfThree(27) => true, isPowerOfThree(0) => false, isPowerOfThree(-3) => false, isPowerOfThree(10) => false
