//
//  AuditoryViewController.m
//  ANX
//
//  Created by Eric Morales on 3/4/18.
//  Copyright © 2018 Eric Morales. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>
#import "AuditoryViewController.h"

@interface AuditoryViewController ()

@end

@implementation AuditoryViewController

int prevQuestion;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Gets a random number
    
    int random = arc4random_uniform(6);
    NSString* quest = @"";
    prevQuestion = random;
    switch (random) {
        case 0:
            quest = @"Listen for 3 things around you. What do you hear?";
            break;
        case 1:
            quest = @"Tell me 5 things that you see.";
            break;
        case 2:
            quest = @"Tell me your favorite memory.";
            break;
        case 3:
            quest = @"What is your favorite dream.";
            break;
        case 4:
            quest = @"Give the names of 5 people.";
            break;
        case 5:
            quest = @"Do you like jazz?";
            break;
        
            
        default:
            break;
    }
    
    //Sets the new question
    [self.question setText:quest];
    
    //Takes the questions and reads it to the person
    NSString *str = quest;
    
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    
    AVSpeechUtterance *speechutt = [AVSpeechUtterance speechUtteranceWithString:str];
    [speechutt setRate:0.001f];
    speechutt.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-us"];
    [synthesizer speakUtterance:speechutt];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)next:(id)sender {
    [self viewDidLoad];
}

- (IBAction)previous:(id)sender {
    
    NSString* quest = @"";
    switch (prevQuestion) {
        case 0:
            quest = @"Listen for 3 things around you. What do you hear?";
            break;
        case 1:
            quest = @"Tell me 5 things that you see.";
            break;
        case 2:
            quest = @"Tell me your favorite memory.";
            break;
        case 3:
            quest = @"What is your favorite dream.";
            break;
        case 4:
            quest = @"Give the names of 5 people.";
            break;
        case 5:
            quest = @"Do you like jazz?";
            break;
            
            
        default:
            break;
    }
    
    //Sets the new question
    [self.question setText:quest];
}


@end
