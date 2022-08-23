//
//  ConfigureController.swift
//  Yicheng_Li_Assignment7
//
//  Created by mac on 2021/2/22.
//

import UIKit

class ConfigureController: UIViewController
{
    var list:Int = 1;
    
    @IBOutlet weak var label: UITextField!
    @IBOutlet weak var fav_channel: UILabel!
    @IBOutlet weak var fav_channel_value: UIStepper!
    
    
    @IBAction func fav_chancel_add(_ sender: UIStepper)
    {
        fav_channel.text = "\(Int(fav_channel_value.value))";
    }
    
    @IBAction func fav_list(_ sender: UISegmentedControl)
    {
        
        let application = UIApplication.shared
        let appDelegate = application.delegate as! AppDelegate
        if (sender.selectedSegmentIndex == 0)
        {
            list = 1;
            fav_channel.text = "\(appDelegate.channel_1 ?? 1)";
            fav_channel_value.value = Double(appDelegate.channel_1);
            label.text = appDelegate.fav_1;
        }
        if (sender.selectedSegmentIndex == 1)
        {
            list = 2;
            fav_channel.text = "\(appDelegate.channel_2 ?? 1)";
            fav_channel_value.value = Double(appDelegate.channel_2);
            label.text = appDelegate.fav_2;
        }
        if (sender.selectedSegmentIndex == 2)
        {
            list = 3;
            fav_channel.text = "\(appDelegate.channel_3 ?? 1)";
            fav_channel_value.value = Double(appDelegate.channel_3);
            label.text = appDelegate.fav_3;
        }
        if (sender.selectedSegmentIndex == 3)
        {
            list = 4;
            fav_channel.text = "\(appDelegate.channel_4 ?? 1)";
            fav_channel_value.value = Double(appDelegate.channel_4);
            label.text = appDelegate.fav_4;
        }
    }
    
    @IBAction func cancel(_ sender: UIButton)
    {
        self.viewDidLoad();
    }
    
    @IBAction func save(_ sender: UIButton)
    {
        if(label.text!.count == 0)
        {
            let message:String;
            message = "Label is empety."
            let title = "ERROR"
            let alert =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            alert.addAction ( UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil ));
            present(alert,
                    animated: true,
                    completion: nil)
        }
        else if(label.text!.count > 4)
        {
            let message:String;
            message = "Label is too long."
            let title = "ERROR"
            let alert =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            alert.addAction ( UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil ));
            present(alert,
                    animated: true,
                    completion: nil)
        }
        else
        {
            let application = UIApplication.shared
            let appDelegate = application.delegate as! AppDelegate
            
            if (list == 1)
            {
                appDelegate.channel_1 = Int(fav_channel_value.value)
                appDelegate.fav_1 = label.text
            }
            if (list == 2)
            {
                appDelegate.channel_2 = Int(fav_channel_value.value)
                appDelegate.fav_2 = label.text
            }
            if (list == 3)
            {
                appDelegate.channel_3 = Int(fav_channel_value.value)
                appDelegate.fav_3 = label.text
            }
            if (list == 4)
            {
                appDelegate.channel_4 = Int(fav_channel_value.value)
                appDelegate.fav_4 = label.text
            }
            let message:String;
            message = "the setting has been updated."
            let title = "success"
            let alert =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            alert.addAction ( UIAlertAction(title: "OK",
                                            style: .cancel,
                                            handler: nil ));
            present(alert,
                    animated: true,
                    completion: nil)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let application = UIApplication.shared
        let appDelegate = application.delegate as! AppDelegate
        fav_channel.text = "\(appDelegate.channel_1 ?? 1)";
        fav_channel_value.value = Double(appDelegate.channel_1);
        label.text = appDelegate.fav_1;
    }

}
