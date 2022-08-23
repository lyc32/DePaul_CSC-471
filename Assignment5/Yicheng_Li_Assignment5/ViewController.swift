//
//  ViewController.swift
//  Yicheng_Li_Assignment5
//
//  Created by mac on 2021/2/8.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet var Description: UITextField!
    
    @IBOutlet var Quantity: UITextField!
    
    @IBOutlet weak var List: UITextView!
    
    @IBAction func New_List(_ sender: UIButton)
    {
        List.text = "";
        Description.text = "";
        Quantity.text = "";
    }
    
    @IBAction func New_item(_ sender: UIButton)
    {
        Description.text = "";
        Quantity.text = "";
    }
    
    @IBAction func Add(_ sender: UIButton)
    {
        if(Quantity.hasText)&&(Description.hasText)
        {
            var q:Int;
            q = (Quantity.text! as NSString).integerValue;
            var s:String;
            s = String(q);
            List.text = List.text! + "\n" + s + "x " + Description.text!;
        }
        else
        {
            let message:String;
            if(Quantity.text!.isEmpty)
            {
                message = "Quantity is empty";
            }
            else
            {
                message = "Description is empty";
            }
            let title = "Input ERROR"
            let alertController =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            let cancelAction =
                UIAlertAction(title: "OK",
                              style: .cancel,
                              handler: nil)
            alertController.addAction(cancelAction)
            present(alertController,
                    animated: true,
                    completion: nil)
        }
    }
    
    @IBAction func editEnd(_ sender: UITextField)
    {
        sender.resignFirstResponder()
    }
    
    @IBAction func background_touch(_ sender: UIControl)
    {
        Description.resignFirstResponder()
        Quantity.resignFirstResponder()
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        List.text = "";
    }


}

