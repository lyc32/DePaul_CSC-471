import UIKit

//Functionrankperformsabinarysearchofakeyinasortedintegerarray.
//If the key appears in the array, the rank function returns the index of key in the array.
//If the key does not appear in the array, the rank function returns -1.
func rank(array: [Int], index: Int) -> Int
{
    var i:Int
    i = 0
    
    while i<array.count
    {
        if(index == array[i])
        {
            return i;
        }
        i = i + 1;
    }
    return -1;
}

//Add methods to the Fraction class to compute the subtraction, multiplication, and division of two fractions in a similar way to the add method
class fraction
{
    var numerator  : Int = 0
    var denominator: Int = 1
    
    init() {}
    init(_ numerator: Int, over denominator: Int)
    {
        self.numerator = numerator
        self.denominator = denominator
    }
    init(_ numerator: Int, _ denominator: Int)
    {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func setTo(_ numerator: Int, over denominator: Int)
    {
        self.numerator = numerator
        self.denominator = denominator
    }
    func setTo(_ numerator: Int, _ denominator: Int)
    {
        self.numerator = numerator
        self.denominator = denominator
    }
    
    func add(_ f: fraction) -> fraction
    {
        let result: fraction = fraction()
        result.numerator = numerator * f.denominator + denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.remove_factor()
        return result
    }
    
    static func +(a: fraction, b: fraction) -> fraction
    {
        return a.add(b)
    }
    static func +=(left: inout fraction, right: fraction)
    {
        left = left + right
    }
    
    
    func subtraction(_ f: fraction) -> fraction
    {
        let result: fraction = fraction()
        result.numerator = numerator * f.denominator - denominator * f.numerator
        result.denominator = denominator * f.denominator
        result.remove_factor()
        return result
    }
    static func -(a: fraction, b: fraction) -> fraction
    {
        return a.subtraction(b)
    }
    static func -=(left: inout fraction, right: fraction)
    {
        left = left - right
    }
    
    
    
    func multiplication(_ f: fraction) -> fraction
    {
        let result: fraction = fraction()
        result.numerator = numerator * f.numerator
        result.denominator = denominator * f.denominator
        result.remove_factor()
        return result;
    }
    
    static func *(a: fraction, b: fraction) -> fraction
    {
        return a.multiplication(b)
    }
    static func *=(left: inout fraction, right: fraction)
    {
        left = left - right
    }
    
    
    func division(_ f: fraction) -> fraction
    {
        let result: fraction = fraction()
        result.numerator = numerator * f.denominator
        result.denominator = denominator * f.numerator
        result.remove_factor()
        return result;
    }
    
    static func /(a: fraction, b: fraction) -> fraction
    {
        return a.division(b)
    }
    static func /=(left: inout fraction, right: fraction)
    {
        left = left - right
    }
    
    
    func remove_factor()
    {
        var positive = 1;
        
        if numerator>0
        {
            positive = 1;
        }
        else
        {
            positive = -1;
            numerator = -1 * numerator;
        }
        
        var a = numerator;
        var b = denominator;
        
        var r: Int
        while b != 0
        {
            r = a % b;
            a = b;
            b = r;
       }
        numerator   = numerator * positive / a;
        denominator = denominator / a;
    }
    
    func show()//print the fraction
    {
        print("\(numerator)" + "/" + "\(denominator)");
    }
    
}

//function rank test
print("function rank test")
var test:[Int] = [0,1,2,3,4,5]
print(rank(array:test,index:0))
print(rank(array:test,index:3))
print(rank(array:test,index:5))

test = [5,4,3,2,1,0]
print(rank(array:test,index:0))
print(rank(array:test,index:3))
print(rank(array:test,index:5))

//class fraction test
print("class fraction test")
var f1 = fraction(1,2)
var f2 = fraction(2, over: 3)
var f3 = fraction()
f3.setTo(3, 4)
var f4 = fraction()
f4.setTo(4, over: 5)

var f5 = f1 * f2; //1/2 * 2/3 = 1/3
f5.show();

f5 = f1 / f3; // (1/2) / (3/4) = 2/3
f5.show();

f5 = f1 - f4; // 1/2 - 4/5 = -3/10
f5.show();



