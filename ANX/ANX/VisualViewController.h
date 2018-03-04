//
//  VisualViewController.h
//  ANX
//
//  Created by Eric Morales on 3/3/18.
//  Copyright © 2018 Eric Morales. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VisualViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UILabel *question;


@property (weak, nonatomic) IBOutlet UIButton *answer1;
@property (weak, nonatomic) IBOutlet UIButton *answer2;
@property (weak, nonatomic) IBOutlet UIButton *answer3;
@property (weak, nonatomic) IBOutlet UIButton *answer4;


@end
