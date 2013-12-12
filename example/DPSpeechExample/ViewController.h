//
//  ViewController.h
//  DPSpeechExample
//
//  Created by ILYA2606 on 11.12.13.
//  Copyright (c) 2013 Darkness Production. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController{
    
}

@property (strong, nonatomic) IBOutlet UITextView *tv_text;
@property (strong, nonatomic) IBOutlet UIPickerView *pv_languages;
@property (strong, nonatomic) IBOutlet UIButton *b_speak;
@property (strong, nonatomic) IBOutlet UISlider *sl_speed;
@property (strong, nonatomic) IBOutlet UISlider *sl_pitch;

- (IBAction)speakClick:(id)sender;
- (IBAction)hideKeyboard;

@end
