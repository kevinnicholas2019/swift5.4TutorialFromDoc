//
//  Animal+Exam.m
//  ObjCTutorial
//
//  Created by Kevin Tan on 24/03/21.
//

#import "Animal+Exam.h"

@implementation Animal (Exam)

-(BOOL)checkedByVet {
    return 1;
}

-(void)getShots {
    NSLog(@"%@ got its shots", self.name);
}

@end
