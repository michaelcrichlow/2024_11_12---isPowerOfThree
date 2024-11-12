package test

import "core:fmt"
import "core:math"
print :: fmt.println


main :: proc() {
	print(isPowerOfThree(27))
	print(isPowerOfThree(0))
	print(isPowerOfThree(-3))
	print(isPowerOfThree(10))
	// OUTPUT:
	// true
	// false
	// false
	// false
	print(pow(10, 3))
}


isPowerOfThree :: proc(n: int) -> bool {
	if n < 0 {
		return false
	}

	val := 1
	for {
		// if math.pow(f32(3), f32(val)) == f32(n) {
		// 	return true
		// } else if math.pow(f32(3), f32(val)) < f32(n) {
		// 	val += 1
		// } else if math.pow(f32(3), f32(val)) > f32(n) {
		// 	return false
		// }
		pow_3_val := pow(3, val)
		if pow_3_val == n {
			return true
		} else if pow_3_val < n {
			val += 1
		} else if pow_3_val > n {
			return false
		}
	}
}
