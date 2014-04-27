//
//  SignInfo.m
//  AstroSign
//
//  Created by Brandon on 2014-03-31.
//
//


/**  © 2014, Brandon T. All Rights Reserved.
 *
 *  This file is part of the ProSock Library.
 *  You may use this file only for your personal, and non-commercial use.
 *  You may not modify or use the contents of this file for any purpose (other
 *  than as specified above) without the express written consent of the author.
 *  You may not reproduce, republish, post, transmit, publicly display,
 *  publicly perform, or distribute in print or electronically any of the contents
 *  of this file without express consent of rightful owner.
 *  This License is subject to change at any time without notice/warning.
 *
 *						Author : Brandon T.
 *						Contact: Brandon.T-@Live.com
 */

#import "SignInfo.h"
#import "Utilities.h"

@interface SignInfo ()
@property (nonatomic, weak) UIImage* image;
@property (nonatomic, weak) NSString* sign;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *signLabel;

@property (weak, nonatomic) IBOutlet UILabel *signNameLabel;
@property (nonatomic, strong) Utilities* utility;
@end

@implementation SignInfo
-(Utilities*)utility
{
    if (!_utility)
    {
        _utility = [[Utilities alloc] init];
    }
    return _utility;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.signLabel.text = [self.utility GetHoroscopeInfo: self.sign];
    self.imageView.image = self.image;
    self.signNameLabel.text = self.sign;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


-(void)setLabelText: (NSString*) text
{
    _sign = text;
}

-(void)setImage: (UIImage*) image
{
    _image = image;
}
@end
