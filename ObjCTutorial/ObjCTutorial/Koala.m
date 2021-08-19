//
//  Koala.m
//  ObjCTutorial
//
//  Created by Kevin Tan on 23/03/21.
//

#import "Koala.h"

@implementation Koala

-(NSString *)talkToMe:(NSString *)myName {
    NSString * response = [NSString stringWithFormat: @"Hello %@ says %@", myName, self.name];
    return response;
}

-(void) lookCute {
    NSLog(@"%@ acts super cute", self.name);
}

-(void)performTrick {
    NSLog(@"%@ performs a hand stands", self.name);
}

-(void)makeSound {
    NSLog(@"%@ says Yawn", self.name);
}

@end
