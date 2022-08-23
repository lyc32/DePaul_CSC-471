//
//  ViewController.swift
//  Yicheng_Li_Assignment3
//
//  Created by mac on 2021/1/24.
//

import UIKit

class ViewController: UIViewController
{
    var number:Double = 0.0
    var flage:Int = 0
    
    var num1:String = "NULL";
    var num2:String = "NULL";
    var operation:String  = "NULL";
    
    @IBOutlet weak var result: UILabel!
    @IBAction func number0(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "0";
            }
            else
            {
                result.text = "0";
            }
            num2 = result.text!;
        }
        else
        {
            
            if( num1 != "0")
            {
                result.text = result.text! + "0";
                num1 = result.text!;
            }
        }
    }
    
    @IBAction func number1(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "1";
            }
            else
            {
                result.text = "1";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "1";
                
            }
            else
            {
                result.text = "1";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number2(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "2";
            }
            else
            {
                result.text = "2";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "2";
                
            }
            else
            {
                result.text = "2";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number3(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "3";
            }
            else
            {
                result.text = "3";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "3";
                
            }
            else
            {
                result.text = "3";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number4(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "4";
            }
            else
            {
                result.text = "4";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "4";
                
            }
            else
            {
                result.text = "4";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number5(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "5";
            }
            else
            {
                result.text = "5";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "5";
                
            }
            else
            {
                result.text = "5";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number6(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "6";
            }
            else
            {
                result.text = "6";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "6";
                
            }
            else
            {
                result.text = "6";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number7(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "7";
            }
            else
            {
                result.text = "7";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "7";
                
            }
            else
            {
                result.text = "7";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number8(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "8";
            }
            else
            {
                result.text = "8";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "8";
                
            }
            else
            {
                result.text = "8";
                
            }
            num1 = result.text!;
        }
    }
    
    @IBAction func number9(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + "9";
            }
            else
            {
                result.text = "9";
            }
            num2 = result.text!;
        }
        else
        {
            if( num1 != "0")
            {
                result.text = result.text! + "9";
                
            }
            else
            {
                result.text = "9";
                
            }
            num1 = result.text!
        }
    }
    
    @IBAction func point(_ sender: UIButton)
    {
        if (operation != "NULL")
        {
            if (num2 != "NULL")
            {
                result.text = result.text! + ".";
            }
            num2 = result.text!;
        }
        else
        {
            result.text = result.text! + ".";
            num1 = result.text!;
        }
    }
    
    @IBAction func clear(_ sender: UIButton)
    {
        result.text = "0";
        num1 = "0";
        num2 = "NULL";
        operation = "NULL";
    }
    
    @IBAction func add(_ sender: UIButton)
    {
        if(num2 != "NULL")
        {
            result.text = comput(num1: num1, operation: operation, num2: num2);
            num1 = result.text!;
            num2 = "NULL";
            operation = "+";
        }
        else
        {
            if(num1 != "NULL")
            {
                operation = "+";
            }
        }
    }
    
    @IBAction func minus(_ sender: UIButton)
    {
        if(num2 != "NULL")
        {
            result.text = comput(num1: num1, operation: operation, num2: num2);
            num1 = result.text!;
            num2 = "NULL";
            operation = "-";
        }
        else
        {
            if(num1 != "NULL")
            {
                operation = "-";
            }
        }
    }
    
    @IBAction func times(_ sender: UIButton)
    {
        if(num2 != "NULL")
        {
            result.text = comput(num1: num1, operation: operation, num2: num2);
            num1 = result.text!;
            num2 = "NULL";
            operation = "*";
        }
        else
        {
            if(num1 != "NULL")
            {
                operation = "*";
            }
        }
    }
    
    @IBAction func division(_ sender: UIButton)
    {
        if(num2 != "NULL")
        {
            result.text = comput(num1: num1, operation: operation, num2: num2);
            num1 = result.text!;
            num2 = "NULL";
            operation = "/";
        }
        else
        {
            if(num1 != "NULL")
            {
                operation = "/";
            }
        }
    }
    @IBAction func equal(_ sender: UIButton)
    {
        if(num2 != "NULL")
        {
            result.text = comput(num1: num1, operation: operation, num2: num2);
            num1 = result.text!;
            num2 = "NULL";
            operation = "NULL";
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        num1 = "0";
        num2 = "NULL";
        operation = "NULL";
    }
    
    func comput(num1:String,operation:String,num2:String) -> String
    {
        var sum: Double = 0.0
        switch operation
        {
            case "+":
                sum = (num1 as NSString).doubleValue + (num2 as NSString).doubleValue;
            case "-":
                sum = (num1 as NSString).doubleValue - (num2 as NSString).doubleValue;
            case "*":
                sum = (num1 as NSString).doubleValue * (num2 as NSString).doubleValue;
            case "/":
                sum = (num1 as NSString).doubleValue / (num2 as NSString).doubleValue;
        default:
            sum = 0.0;
        }
        return sum.description;
    }
}

