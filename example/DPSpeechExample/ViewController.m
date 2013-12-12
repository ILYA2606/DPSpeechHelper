//
//  ViewController.m
//  DPSpeechExample
//
//  Created by ILYA2606 on 11.12.13.
//  Copyright (c) 2013 Darkness Production. All rights reserved.
//

#import "ViewController.h"
#import "DPSpeechHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //поиск русского языка
    int ruIndex = -1;
    for(int i = 0; i < [AVSpeechSynthesisVoice speechVoices].count; i++){
        AVSpeechSynthesisVoice *voice = [AVSpeechSynthesisVoice speechVoices][i];
        NSString *language = [voice language];
        if([language isEqualToString:@"ru-RU"]){
            ruIndex = i;
            break;
        }
    }
    if(ruIndex != -1){
        [_pv_languages selectRow:ruIndex inComponent:0 animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - UIPickerView Data Source

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [[AVSpeechSynthesisVoice speechVoices] count];
}

#pragma mark - UIPickerView Delegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [[AVSpeechSynthesisVoice speechVoices][row] language];
}

#pragma mark - IBActions

- (IBAction)speakClick:(id)sender {
    NSString *text = _tv_text.text;
    NSString *language = [[[AVSpeechSynthesisVoice speechVoices] objectAtIndex:[_pv_languages selectedRowInComponent:0]] language];
    [DPSpeechHelper speechText:text
                      language:language
                         speed:_sl_speed.value
                         pitch:_sl_pitch.value];
}

- (IBAction)hideKeyboard{
    [self.view endEditing:YES];
}

@end
