## Math Functions
---

| Operator | Description | Example | Result|
|----------|-------------|---------|-------|
|+	|addition|	2 + 3|	5|
|-	| subtraction|	2 - 3|	-1|
|*|	 multiplication	|2 * 3|	6|
| /	| division (integer division truncates results)	|4 / 2|	2|
|%|	modulo (remainder)|	5 % 4|	1|
|^	|exponentiation|	2.0 ^ 3.0|	8|




|Function|	Return Type|	Description|	Example|	Result|
|--------|-------------|-------------|---------|--------|
|abs(x)	|(same as x)	|absolute value|	abs(-17.4)|	17.4|
|cbrt(dp)|	dp	|cube root	|cbrt(27.0)|	3|
|ceil(dp or numeric)|	(same as input)|	smallest integer not less than argument|	ceil(-42.8)|	-42|
|degrees(dp)|	dp	|radians to degrees|	degrees(0.5)	|28.6478897565412|
|exp(dp or numeric)|	(same as input)	|exponential|	exp(1.0)	|2.71828182845905|
|floor(dp or numeric)|	(same as input)|	largest integer not greater than argument|	floor(-42.8)|	-43|
|ln(dp or numeric)	|(same as input)|	natural logarithm|	ln(2.0)|	0.693147180559945|
|log(dp or numeric)|	(same as input)|	base 10 logarithm	|log(100.0)	|2|
|log(b numeric, x numeric)	|numeric|	logarithm to base b|	log(2.0, 64.0)|	6.0000000000|
|mod(y, x)|	(same as argument types)|	remainder of y/x|	mod(9,4)|	1|
|pi()	|dp|	"Pi" constant	|pi()|	3.14159265358979|
|pow(x dp, e dp)	|dp|	raise a number to exponent e|	pow(9.0, 3.0)	|729|
|pow(x numeric, e numeric)|	numeric|	raise a number to exponent e|	pow(9.0, 3.0)|	729|
|radians(dp)	|dp|	degrees to radians|	radians(45.0)|	0.785398163397448|
|random()	|dp|	random value between 0.0 and 1.0|	random()|	   | 
|round(dp or numeric)|	(same as input)|	round to nearest integer|	round(42.4)|	42|
|round(v numeric, s integer)	|numeric	|round to s decimal places	|round(42.4382, 2)|	42.44|
|sign(dp or numeric)	|(same as input)	|sign of the argument (-1, 0, +1)	|sign(-8.4)|	-1|
|sqrt(dp or numeric) |	(same as input)|	square root|	sqrt(2.0)|	1.4142135623731|
|trunc(dp or numeric)|	(same as input)|	truncate toward zero|	trunc(42.8)	|42|
|trunc(v numeric, s integer)	|numeric	truncate to s decimal places|	trunc(42.4382, 2)|	42.43|

