package test.example;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

import org.junit.jupiter.api.Test;

public class CalculatorTest {
	@Test
	public void testAddSuccess() {
		Calculator calc = new Calculator();
		int a = 40;
		int b = 15;
		
		int sum = calc.add(a, b);
		
		assertEquals(55, sum);
	}
	
	@Test
	public void testAddFailed() {
		Calculator calc = new Calculator();
		int a = 40;
		int b = 15;
		
		int sum = calc.add(a, b);
		
		assertNotEquals(1, sum);
	}

}
