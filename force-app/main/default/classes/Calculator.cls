/**
 * @File Name          : Calculator.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 15/01/2020, 15:42:36
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    15/01/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public with sharing class Calculator {
  public class CalculatorException extends Exception {
  }

  /**
  * @description 
  * @author ChangeMeIn@UserSettingsUnder.SFDoc | 15/01/2020 
  * @param a 
  * @param b 
  * @return Integer 
  **/
  public static Integer addition(Integer a, Integer b) {
    return a + b;
  }

  public static Integer subtraction(Integer a, Integer b) {
    return a - b;
  }

  public static Integer multiply(Integer a, Integer b) {
    if (b == 0 || a == 0) {
      throw new CalculatorException(
        'It doesn\'t make sense to multiply by zero'
      );
    }
    return a * b;
  }

  public static Decimal divide(Integer numerator, Integer denominator) {
    if (denominator == 0) {
      throw new CalculatorException('you still can\'t divide by zero');
    }

    if (numerator < 0 || denominator < 0) {
      throw new CalculatorException('negative value(s) not allowed.');
    }

    Decimal returnValue = numerator / denominator;

    return returnValue;
  }
}
