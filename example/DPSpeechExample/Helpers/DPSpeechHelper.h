//
//  SpeechHelper.h
//  DPSpeechExample
//
//  Created by ILYA2606 on 11.12.13.
//  Copyright (c) 2013 Darkness Production. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>


@interface DPSpeechHelper : NSObject

/**
 @method speechText:language:speed:pitch:
 
 Произношение определенного текста
 
 @param text
 Текст для произношения
 
 @param language
 Язык, на котором будет произноситься текст
 
 @param speed
 Скорость произношения (0.0 - 2.0)

 @param pitch
 Тон произношения (0.5 - 2.0)
 */

+(void)speechText:(NSString*)text
         language:(NSString*)language
            speed:(float)speed
            pitch:(float)pitch;

@end
