//
//  DVDController.swift
//  Yicheng_Li_Assignment7
//
//  Created by mac on 2021/2/22.
//

import UIKit

class DVDController: UIViewController
{
    
    @IBOutlet weak var DVD_power: UILabel!
    @IBOutlet weak var DVD_state: UILabel!
    @IBOutlet weak var text_power: UISwitch!
    
    @IBOutlet weak var text_play: UIButton!
    @IBOutlet weak var text_stop: UIButton!
    @IBOutlet weak var text_pause: UIButton!
    @IBOutlet weak var text_forward: UIButton!
    @IBOutlet weak var text_rewind: UIButton!
    @IBOutlet weak var text_record: UIButton!
    
    @IBAction func Power(_ sender: UISwitch)
    {
        if(DVD_power.text == "ON")
        {
            DVD_power.text = "OFF";
            text_play.isHidden = true;
            text_stop.isHidden = true;
            text_pause.isHidden = true;
            text_forward.isHidden = true;
            text_rewind.isHidden = true;
            text_record.isHidden = true;
        }
        else
        {
            DVD_power.text = "ON";
            text_play.isHidden = false;
            text_stop.isHidden = false;
            text_pause.isHidden = false;
            text_forward.isHidden = false;
            text_rewind.isHidden = false;
            text_record.isHidden = false;
        }
    }
    
    @IBAction func play(_ sender: UIButton)
    {
        if(DVD_state.text == "Playing")
        {
            let message:String;
            message = "Now is playing state"
            let title = "ERROR"
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
        else if(DVD_state.text == "Recording")
        {
            let message:String;
            message = "click the play button to force play or cancel this operation."
            let title = "ERROR"
            let alert =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            
            alert.addAction ( UIAlertAction(title: "Play",
                                      style: .default,
                                      handler:
                                        { [self]
                                            (action) in DVD_state.text = "Playing"}));
            alert.addAction ( UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil ));
            present(alert,
                    animated: true,
                    completion: nil)
        }
        else
        {
            DVD_state.text = "Playing"
        }
    }
    
    @IBAction func stop(_ sender: UIButton)
    {
        DVD_state.text = "Stopped"
    }
    
    @IBAction func pause(_ sender: UIButton)
    {
        if(DVD_state.text == "Playing")
        {
            DVD_state.text = "paused"
        }
        else
        {
            let message:String;
            message = "please, play the DVR before."
            let title = "ERROR"
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
    
    @IBAction func Fast_forward(_ sender: UIButton)
    {
        if(DVD_state.text == "Playing")
        {
            DVD_state.text = "Forwarding"
        }
        else
        {
            let message:String;
            message = "click the Fast Forward button to force Fast Forward or cancel this operation."
            let title = "ERROR"
            let alert =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            
            alert.addAction ( UIAlertAction(title: "Fast Forward",
                                      style: .default,
                                      handler:
                                        { [self]
                                            (action) in DVD_state.text = "Forwarding"}));
            alert.addAction ( UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil ));
            present(alert,
                    animated: true,
                    completion: nil)
        }
    }
    
    @IBAction func Fast_rewind(_ sender: UIButton)
    {
        if(DVD_state.text == "Playing")
        {
            DVD_state.text = "Fewinding"
        }
        else
        {
            let message:String;
            message = "click the Fast Fewind button to force Fast Fewind or cancel this operation."
            let title = "ERROR"
            let alert =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            alert.addAction ( UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil ));
            alert.addAction ( UIAlertAction(title: "Fast Fewind",
                                      style: .default,
                                      handler:
                                        { [self]
                                            (action) in DVD_state.text = "Fewinding"}));
            present(alert,
                    animated: true,
                    completion: nil)
        }
    }
    
    @IBAction func Record(_ sender: UIButton)
    {
        if(DVD_state.text == "Stopped")
        {
            DVD_state.text = "Recording"
        }
        else
        {
            let message:String;
            message = "click the continue button to force record or cancel this operation."
            let title = "ERROR"
            let alert =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            alert.addAction ( UIAlertAction(title: "Cancel",
                                            style: .cancel,
                                            handler: nil ));
            alert.addAction ( UIAlertAction(title: "Continue",
                                      style: .default,
                                      handler:
                                        { [self]
                                            (action) in DVD_state.text = "Recording"}));
            present(alert,
                    animated: true,
                    completion: nil)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        DVD_power.text = "OFF";
        text_power.isOn = false;
        DVD_state.text = "Stopped";
        text_play.isHidden = true;
        text_stop.isHidden = true;
        text_pause.isHidden = true;
        text_forward.isHidden = true;
        text_rewind.isHidden = true;
        text_record.isHidden = true;
    }
}
