/**
 * @File Name          : CalculatorTests.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 15/01/2020, 15:42:52
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    15/01/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
@isTest
private class CalculatorTests {
  @isTest
  private static void testAddition() {
    Calculator.addition(1, 0);
  }
  @isTest
  private static void testSubtraction() {
    Calculator.subtraction(1, 0);
  }

  @isTest
  private static void testDivideThrowsExceptionForDivisionByZero() {
    Boolean caught = false;
    try {
      Calculator.divide(1, 0);
    } catch (Calculator.CalculatorException e) {
      System.assertEquals(
        'you still can\'t divide by zero',
        e.getMessage(),
        'caught the right exception'
      );
      caught = true;
    }
    System.assert(caught, 'threw expected exception');
  }

  @isTest
  private static void testDivideThrowsExceptionForDivisionByTwo() {
    Boolean caught = true;
    try {
      Calculator.divide(1, 2);
    } catch (Calculator.CalculatorException e) {
      System.assertEquals(
        'you still can\'t divide by zero',
        e.getMessage(),
        'caught the right exception'
      );
      caught = true;
    }
    System.assert(caught, 'threw expected exception');
  }

  @isTest
  private static void testMultiplyByOne() {
    Boolean caught = false;
    try {
      Calculator.multiply(1, 0);
    } catch (Calculator.CalculatorException e) {
      System.assertEquals(
        'It doesn\'t make sense to multiply by zero',
        e.getMessage(),
        'caught the right exception'
      );
      caught = true;
    }
    System.assert(caught, 'threw expected exception');
  }

  @isTest
  private static void testMultiplyByTwo() {
    Boolean caught = true;
    try {
      Calculator.multiply(1, 2);
    } catch (Calculator.CalculatorException e) {
      System.assertEquals(
        'It doesn\'t make sense to multiply by zero',
        e.getMessage(),
        'caught the right exception'
      );
      caught = true;
    }
    System.assert(caught, 'threw expected exception');
  }

  @isTest
  private static void testDivideThrowsExceptionForNegativeNumber() {
    Boolean caught = true;
    try {
      Calculator.divide(-1, 2);
    } catch (Calculator.CalculatorException e) {
      System.assertEquals('negative value(s) not allowed.', e.getMessage());
      caught = true;
    }
    System.assert(caught, 'threw expected exception');
  }
}
