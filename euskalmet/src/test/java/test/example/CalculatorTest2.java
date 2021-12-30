package test.example;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class CalculatorTest2 {

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		System.out.println("This is executed before all test methods. Used to initialize DB Connections and resources.");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		System.out.println("This is executed after all test methods. Used to close DB Connections and resources");
	}

	@BeforeEach
	void setUp() throws Exception {
		System.out.println("Test x running.");
	}

	@AfterEach
	void tearDown() throws Exception {
		System.out.println("Test x stopped running.");
	}

	@Test
	void testAdd() {
		System.out.println("testAdd running...");
		Calculator calc = new Calculator();
		int a = 40;
		int b = 15;
		
		int sum = calc.add(a, b);
		
		assertEquals(55, sum);	}

	@Test
	void testSubstract() {
		System.out.println("testSubstract running...");
		Calculator calc = new Calculator();
		int a = 40;
		int b = 15;
		
		int difference = calc.substract(a, b);
		
		assertEquals(25, difference);	}

}
