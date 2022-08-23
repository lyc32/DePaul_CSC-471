//
//  ViewController.swift
//  Yicheng_Li_Assignment4
//
//  Created by mac on 2021/1/31.
//

import UIKit



class ViewController: UIViewController
{
    var count:Int = 0;
    
    
    @IBOutlet weak var power: UILabel!
    @IBOutlet weak var Volume: UILabel!
    @IBOutlet weak var channel: UILabel!
    
    
    @IBOutlet weak var text_power: UISwitch!
    @IBOutlet weak var text_volume: UILabel!
    @IBOutlet weak var text_channel: UILabel!
    @IBOutlet weak var text_favorite: UILabel!
    @IBOutlet weak var text_list: UISegmentedControl!
    
    
    @IBOutlet weak var text_number0: UIButton!
    @IBOutlet weak var text_number1: UIButton!
    @IBOutlet weak var text_number2: UIButton!
    @IBOutlet weak var text_number3: UIButton!
    @IBOutlet weak var text_number4: UIButton!
    @IBOutlet weak var text_number5: UIButton!
    @IBOutlet weak var text_number6: UIButton!
    @IBOutlet weak var text_number7: UIButton!
    @IBOutlet weak var text_number8: UIButton!
    @IBOutlet weak var text_number9: UIButton!
    @IBOutlet weak var text_add: UIButton!
    @IBOutlet weak var text_minus: UIButton!
    
    
    
    
    @IBOutlet weak var volume_show: UISlider!
    
    
    @IBAction func power_on(_ sender: UISwitch)
    {
        if(power.text == "ON")
        {
            power.text = "OFF";
            text_volume.isHidden   = true;
            text_channel.isHidden  = true;
            text_favorite.isHidden = true;
            volume_show.isHidden   = true;
            text_number0.isHidden  = true;
            text_number1.isHidden  = true;
            text_number2.isHidden  = true;
            text_number3.isHidden  = true;
            text_number4.isHidden  = true;
            text_number5.isHidden  = true;
            text_number6.isHidden  = true;
            text_number7.isHidden  = true;
            text_number8.isHidden  = true;
            text_number9.isHidden  = true;
            text_add.isHidden      = true;
            text_minus.isHidden    = true;
            text_list.isHidden     = true;
        }
        else
        {
            power.text = "ON";
            text_volume.isHidden   = false;
            text_channel.isHidden  = false;
            text_favorite.isHidden = false;
            volume_show.isHidden   = false;
            text_number0.isHidden  = false;
            text_number1.isHidden  = false;
            text_number2.isHidden  = false;
            text_number3.isHidden  = false;
            text_number4.isHidden  = false;
            text_number5.isHidden  = false;
            text_number6.isHidden  = false;
            text_number7.isHidden  = false;
            text_number8.isHidden  = false;
            text_number9.isHidden  = false;
            text_add.isHidden      = false;
            text_minus.isHidden    = false;
            text_list.isHidden     = false;
        }
    }
    
    @IBAction func volume_change(_ sender: UISlider)
    {
        Volume.text = "\(Int((sender.value)*100))";
    }
    
    @IBAction func number0(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(0)";
        }
        else
        {
            channel.text = channel.text! + "\(0)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number1(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(1)";
        }
        else
        {
            channel.text = channel.text! + "\(1)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number2(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(2)";
        }
        else
        {
            channel.text = channel.text! + "\(2)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number3(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(3)";
        }
        else
        {
            channel.text = channel.text! + "\(3)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number4(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(4)";
        }
        else
        {
            channel.text = channel.text! + "\(4)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number5(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(5)";
        }
        else
        {
            channel.text = channel.text! + "\(5)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number6(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(6)";
        }
        else
        {
            channel.text = channel.text! + "\(6)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number7(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(7)";
        }
        else
        {
            channel.text = channel.text! + "\(7)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number8(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(7)";
        }
        else
        {
            channel.text = channel.text! + "\(7)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func number9(_ sender: UIButton)
    {
        count = (count+1)%2;
        if(count == 0)
        {
            channel.text = "\(9)";
        }
        else
        {
            channel.text = channel.text! + "\(9)";
            channel.text = "\((channel.text! as NSString).integerValue)";
        }
    }
    
    @IBAction func add(_ sender: UIButton)
    {
        var c:Int;
        c = (channel.text! as NSString).integerValue;
        c = c + 1;
        if(c > 99)
        {
            c = 99;
        }
        channel.text = "\(c)";
        count = 1;
    }
    
    @IBAction func minus(_ sender: UIButton)
    {
        var c:Int;
        c = (channel.text! as NSString).integerValue;
        c = c - 1;
        if(c < 1)
        {
            c = 1;
        }
        channel.text = "\(c)";
        count = 1;
    }
  
    @IBAction func favorite(_ sender: UISegmentedControl)
    {
        count = 1;
        if (sender.selectedSegmentIndex == 0)
        {
            channel.text = "\(50)";
        }
        if (sender.selectedSegmentIndex == 1)
        {
            channel.text = "\(75)";
        }
        if (sender.selectedSegmentIndex == 2)
        {
            channel.text = "\(99)";
        }
        if (sender.selectedSegmentIndex == 3)
        {
            channel.text = "\(25)";
        }
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        count = 1;
        text_power.isOn = false;
        power.text = "OFF";
        text_volume.isHidden   = true;
        text_channel.isHidden  = true;
        text_favorite.isHidden = true;
        volume_show.isHidden   = true;
        text_number0.isHidden  = true;
        text_number1.isHidden  = true;
        text_number2.isHidden  = true;
        text_number3.isHidden  = true;
        text_number4.isHidden  = true;
        text_number5.isHidden  = true;
        text_number6.isHidden  = true;
        text_number7.isHidden  = true;
        text_number8.isHidden  = true;
        text_number9.isHidden  = true;
        text_add.isHidden      = true;
        text_minus.isHidden    = true;
        text_list.isHidden     = true;
        
    }


}

