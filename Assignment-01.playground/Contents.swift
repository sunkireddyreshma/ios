import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare a variable called  distance of type Double, using type annotation
var distance : Double

// 1.b) Declare a constant called  maxWeight of type an Int, with a value of 130, using type annotation
let maxWeight : Int = 130

// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation
print("Your max weight is \(maxWeight)")

print("-------------------------------")

// 1.d) Assign 7,300,678,987 to an var largeInt and print it. Use the swift ability to write large numbers so that they are easy to be read. Refer to Tuples worksheet (problem 4)
var largeInt = 7300678987
print(largeInt)

print("-------------------------------")


// 1.e) Write Swift source code to print the below in one single print statement
            /*
                Hello, All
                Welcome to Swift Programming..!
            */
print("""
      Hello, All
      Welcome to Swift Programming..!
      """)

//**************** END OF QUESTION 1 ****************

print("-------------------------------")


//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line?

var x = 15
var y = 25.0
//y = x

//We can't execute the statement because type double cannot assign to type integer

// 2.b) Fix the error in the question 2.a
var x2 : Double = 15.0
var y2 = 25.0
//y2 = x2

//**************** END OF QUESTION 2 ****************




//**************** QUESTION 3 ****************
// 3 Consider a point (x1,y1), find whether the point is inside or outside the rectangle.
/*
            ------------------------ (highX,highY)
            |                         |
            |                         |
            |                         |
            |                         |
    (lowX,lowY) ----------------------
 
 */

//with lower left corner (lowX,lowY) and upper right (highX, highY).
// Depending upon the cases print "inside" or "outside"

var x1 = 1
var y1 = 2
var lowX = 1
var lowY = 1
var highX = 3
var highY = 3
if((x1 >= lowX && y1 >= lowY) && (x1 <= highX && y1 <= highY))
{
    print("inside")
}
else{
    print("outside")
}

//**************** END OF QUESTION 3 ****************

print("-------------------------------")

//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Decalare var N = 10
//expected output is 1 10 2 9 3 8 4 7 5 6
var N = 10
for i in  1 ... 5
{
    print("\(i)","\(N)",terminator:" ")
    N -= 1
}
print("")
print("-----------------------------")

//4.b) If a number C is given, then print the following rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *

let C = 5
for i in 1...C{
    for j in 0..<(C-i){
        print(" ", terminator: "")
    }
    for j in 1...2*i-1{
        print("*", terminator: "")
    }
    print("")
}
if(C>1){
    for i in 2...C{
        var k = C-i+1
        for j in 0..<(C-k){
            print(" ", terminator: "")
        }
        for j in 1...2*k-1{
            print("*", terminator: "")
        }
        print("")
      }

}
//**************** END OF QUESTION 4 ****************

print("-------------------------------")

//**************** QUESTION 5 ****************
// Using Strings
//5.a) Replace the character "a" in original string with * and print the new String
var original = "This String Contains a very few a's"

var StringReplacedOccurences = original.replacingOccurrences(of: "a",
                                                                   with: "*")

print(StringReplacedOccurences)

print("-------------------------------")

//5.b) Declare 2 Strings str1 and str2 as "Hello, Swift!" and "Hello, World!" respectively and compare them
// If the 2 Strings are equal, print str1 and str2 are equal, else str1 and str2 are not equal.
let str1 = "Hello, Swift!"
let str2 = "Hello, World!"

if(str1 == str2)
{
    print("\(str1) and \(str2) are equal")
}
else{
    print("\(str1) and \(str2) are not equal")
}

   print("-------------------------------")

//5.c) Declare a String Swift and print them in the reverse order.
let str = "Swift"
var result = String(str.reversed())
print(result)

print("-------------------------------")


//5.d) Write a Swift code  to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab
var myString1 = "ababa"
if(myString1.first == "a" && myString1.last == "a")
{
    myString1.remove(at: myString1.startIndex)
    myString1.remove(at: myString1.index(before: myString1.endIndex))
    print(myString1)
}
else
{
   print(myString1)
}
//**************** END OF QUESTION 5 ****************


 



