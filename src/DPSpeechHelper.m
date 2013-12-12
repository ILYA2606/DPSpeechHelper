//
//  SpeechHelper.m
//  DPSpeechExample
//
//  Created by ILYA2606 on 11.12.13.
//  Copyright (c) 2013 Darkness Production. All rights reserved.
//

#import "DPSpeechHelper.h"

@implementation DPSpeechHelper

+(void)speechText:(NSString*)text
         language:(NSString*)language
            speed:(float)speed
            pitch:(float)pitch{
    Class class = NSClassFromString(@"AVSpeechSynthesizer");
    if(!class){
        NSLog(@"AVSpeechSynthesizer not available");
        return;
    }
    AVSpeechSynthesisVoice *voice = [AVSpeechSynthesisVoice voiceWithLanguage:language];
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:text];
    utterance.voice = voice;
    utterance.rate = (speed < 0.0) ? 0.0 : (speed > 2.0) ? 2.0 : speed;
    utterance.pitchMultiplier = (pitch < 0.5) ? 0.5 : (pitch > 2.0) ? 2.0 : pitch;
    AVSpeechSynthesizer *synthesizer = [AVSpeechSynthesizer new];
    [synthesizer speakUtterance:utterance];
}

@end
