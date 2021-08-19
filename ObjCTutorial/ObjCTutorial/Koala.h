//
//  Koala.h
//  ObjCTutorial
//
//  Created by Kevin Tan on 23/03/21.
//

#import "Animal.h"
#import "BeautyContest.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal <BeautyContest>

-(NSString *)talkToMe:(NSString *)myName;

-(void) performTrick;

@end

NS_ASSUME_NONNULL_END
