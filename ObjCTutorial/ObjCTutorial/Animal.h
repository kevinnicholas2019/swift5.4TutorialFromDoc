//
//  Animal.h
//  ObjCTutorial
//
//  Created by Kevin Tan on 23/03/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

//@property (readonly) NSString * name; //no setter
@property NSString * name;
@property  NSString * favFood;
@property  NSString * sound;

@property float weight;

-(instancetype) initWithName:(NSString *) defaultName; //CONSTRUCTOR CUSTOM

-(void) getInfo;

-(float) weightInKg : (float) weightInLabs;

-(NSString *) talkToMe : (NSString *) myName;

-(int) getSum: (int) num1
   nextNumber: (int) num2;

-(void) makeSound;

@end

NS_ASSUME_NONNULL_END
