package LangLearn1

import java.io.IOException // Exception for incorrect input typing.

/**
 * @authors Kyle Kaminski, Cole Tistan, Denisha Pimentel
 * @professor Nancy L Tinkham
 * @date 10/14/2019
 * @project Language Learning Project #1
 * This program will read two numbers and will compute the sum of those two numbers.
 */

object BeginnerProgram {

	private var A: Double = 0.0 // Variable to store value for additive A.
	private var B: Double = 0.0 // Variable to store value for additive B.

	def main(args: Array[String]) { // Driver
		println("Enter number A: ") // Prompts user for console input.
		try { // Try this code, see if an exception occurs.
			A = scala.io.StdIn.readDouble() // Captures input as variable A.
		} catch { // Checks to see if the input received was a double.
			case nfe: NumberFormatException => { // Throws exception if input received was not a number.
				println("Please enter a number next time. A defaulted to 0.") // Exception message.
			} // End case
		} // End catch
		println("Enter number B: ") // Prompts user for console input.
		try { // Try this code, see if an exception occurs.
			B = scala.io.StdIn.readDouble() // Captures input as variable B.
		} catch { // Checks to see if the input received was a double.
			case nfe: NumberFormatException => { // Throws exception if input received was not a number.
				println("Please enter a number next time. B defaulted to 0.") // Exception message.
			} // End case
		} // End catch
		println("Sum: " + (A + B)) // Prints the sum of the two inputs received.
	} // End Driver
} // End BeginnerProgram