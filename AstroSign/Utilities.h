//
//  SocketComm.h
//  AstroSign
//
//  Created by Brandon on 3/25/2014.
//
//


/**  © 2014, Brandon T. All Rights Reserved.
 *
 *  This file is part of the AstroSign project.
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

#import <Foundation/Foundation.h>


/**
 *  Utilities class that allows downloading of HTML, Images, etc.
 *  Used for getting horoscope information from online.
 */
@interface Utilities : NSObject

-(NSArray*) Horoscopes;

-(NSMutableArray*) LoadHoroscopeImages;

-(NSString*) GetHoroscopeInfo:(NSString*)sign;

-(NSInteger) getSignByDate:(NSDate*) date;
@end
