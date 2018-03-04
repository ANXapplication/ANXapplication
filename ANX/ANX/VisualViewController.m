//
//  VisualViewController.m
//  ANX
//
//  Created by Eric Morales on 3/3/18.
//  Copyright © 2018 Eric Morales. All rights reserved.
//

#import <AVFoundation/AVFoundation.h>
#import <QuartzCore/QuartzCore.h>
#import "VisualViewController.h"

@interface VisualViewController ()

@end

@implementation VisualViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
    
    //Randome image to get the data
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"Questions_1"
                                                         ofType:@"plist"];
    
    NSDictionary* plist = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    //Gets a random number
    int random = arc4random_uniform(11);
    NSString* pictureNumber = @"";
    
    switch (random) {
        case 0:
            pictureNumber = @"Picture1";
            break;
        case 1:
            pictureNumber = @"Picture2";
            break;
        case 2:
            pictureNumber = @"Picture3";
            break;
        case 3:
            pictureNumber = @"Picture4";
            break;
        case 4:
            pictureNumber = @"Picture5";
            break;
        case 5:
            pictureNumber = @"Picture6";
            break;
        case 6:
            pictureNumber = @"Picture7";
            break;
        case 7:
            pictureNumber = @"Picture8";
            break;
        case 8:
            pictureNumber = @"Picture9";
            break;
        case 9:
            pictureNumber = @"Picture10";
            break;
        case 10:
            pictureNumber = @"Picture11";
            break;
            
        default:
            break;
    }
    
    
    
    //Image name
    NSString* imageNameAdd = [NSString stringWithFormat:@"Pictures.%@.pic",pictureNumber];
    NSString* imageName = [plist valueForKeyPath:imageNameAdd];
    NSLog(@"%@", imageName);
    
    //Question
    NSString* questoinAdd = [NSString stringWithFormat:@"Pictures.%@.question",pictureNumber];
    NSString* question = [plist valueForKeyPath:questoinAdd];
    NSLog(@"%@", question);
    
    //Answer 1
    NSString* answer1Add = [NSString stringWithFormat:@"Pictures.%@.answer1",pictureNumber];
    NSString* answer1 = [plist valueForKeyPath:answer1Add];
    NSLog(@"%@", answer1);
    
    //Answer 2
    NSString* answer2Add = [NSString stringWithFormat:@"Pictures.%@.answer2",pictureNumber];
    NSString* answer2 = [plist valueForKeyPath:answer2Add];
    NSLog(@"%@", answer2);
    
    //Answer 3
    NSString* answer3Add = [NSString stringWithFormat:@"Pictures.%@.answer3",pictureNumber];
    NSString* answer3 = [plist valueForKeyPath:answer3Add];
    NSLog(@"%@", answer3);
    
    //Answer 4
    NSString* answer4Add = [NSString stringWithFormat:@"Pictures.%@.answer4",pictureNumber];
    NSString* answer4 = [plist valueForKeyPath:answer4Add];
    NSLog(@"%@", answer4);
    
   
    
    
    [self updateQuestion:imageName :question :answer1 :answer2 :answer3 :answer4];
    
}

-(void)updateQuestion:(NSString*)imageName: (NSString*)question: (NSString*)answer1 : (NSString*)answer2:(NSString*)answer3: (NSString*)answer4
{
    
    //This is the image that is going to be displayed
    [self.image setImage:[UIImage imageNamed:imageName]];

    //This is for the quations
    [self.question setText:question];
    
    //These are the answers
    [self.answer1 setTitle:answer1 forState:UIControlStateNormal];
    
    [self.answer2 setTitle:answer2 forState:UIControlStateNormal];
    
    [self.answer3 setTitle:answer3 forState:UIControlStateNormal];
    
    [self.answer4 setTitle:answer4 forState:UIControlStateNormal];
    
    //Takes the questions and reads it to the person
    NSString *str = question;

    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc]init];
    
    AVSpeechUtterance *speechutt = [AVSpeechUtterance speechUtteranceWithString:str];
    [speechutt setRate:0.001f];
    speechutt.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-us"];
    [synthesizer speakUtterance:speechutt];
}

- (IBAction)answer1Pressed:(id)sender {
    [self viewDidLoad];
}
- (IBAction)answer2Pressed:(id)sender {
    [self viewDidLoad];
}
- (IBAction)answer3Pressed:(id)sender {
    [self viewDidLoad];
}
- (IBAction)answer4Pressed:(id)sender {
    [self viewDidLoad];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
  
    
}

@end
