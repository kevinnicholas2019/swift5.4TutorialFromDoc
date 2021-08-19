//
//  main.m
//  ObjCTutorial
//
//  Created by Kevin Tan on 23/03/21.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Koala.h"
#import "Animal+Exam.h"
#import "Dog.h"

void firstChapter() {
    NSLog(@"Hello, World!");
    
    NSString * nothing = nil;
    
    NSLog(@"Location of nil : %p", nothing);
    
    NSString * quote = @"Dogs have masters, while cats have staff";
    
    //HOW OBJECTIVE-C CALLING METHOD
    
    NSLog(@"Size of String : %d", (int)[quote length]); //calling method length of string
    
    NSLog(@"Character at 5 : %c", [quote characterAtIndex: 5]);
    
    //CHAR *
    
    char *name = "Derek";
    NSString * myName = [NSString stringWithFormat:@"- %s", name];
    
    //BOOL
    
    BOOL isStringEqual = [quote isEqualToString:myName];
    printf("Are Strings equal : %s\n", isStringEqual == true ? "True" : "False");
    
    const char * uCString = [[myName uppercaseString]UTF8String];
    NSLog(@"%s\n", uCString);
    
    NSString * wholeQuote = [quote stringByAppendingString:myName];
    
    NSLog(@"%@", wholeQuote);
    
    //SEARCH STRING
    
    NSRange searchResult = [wholeQuote rangeOfString: @"Derek"];
    
    if(searchResult.location == NSNotFound) {
        NSLog(@"String not found");
    } else {
        printf("Derek is at index %lu and is %lu long\n", searchResult.location, searchResult.length);
    }
    
    NSRange range = NSMakeRange(42, 5);
    const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"Kevin Nicholas"]UTF8String];
    printf("%s\n", newQuote);
}

void secondChapter() {
    //MUTABLE STRING
    NSMutableString * groceryList = [NSMutableString stringWithCapacity:50];
    
    [groceryList appendFormat:@"%s", "Potata, Banana, Pasta"];
    
    NSLog(@"groceryList : %@", groceryList);
    
    [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
    
    NSLog(@"groceryList : %@", groceryList);
    
    [groceryList insertString:@", Apple" atIndex:13];
    
    NSLog(@"groceryList : %@", groceryList);
    
    [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString: @"Orange"];
    
    NSLog(@"groceryList : %@", groceryList);
}

void thirdChapter() {
    //ARRAY
    NSArray * officeSupplies = @[@"Pencils", @"Paper"];
    
    NSLog(@"First : %@", officeSupplies[0]);
    NSLog(@"Office Supplies : %@", officeSupplies);
    
    BOOL containsItem = [officeSupplies containsObject:@"Pencils"];
    NSLog(@"Need Pencils : %d", containsItem);
    
    NSLog(@"Total : %d", (int)[officeSupplies count]);
    
    NSLog(@"Index of Pencils is at %lu", (unsigned long)[officeSupplies indexOfObject:@"Pencils"]);
    
    NSMutableArray * heroes = [NSMutableArray arrayWithCapacity:5];
    [heroes addObject:@"Batman"];
    [heroes addObject:@"Flash"];
    [heroes addObject:@"Wonder Woman"];
    [heroes addObject:@"Kid Flash"];
    
    [heroes insertObject:@"Superman" atIndex:2];
    
    NSLog(@"%@", heroes);
    
    [heroes removeObject:@"Flash"];
    
    [heroes removeObjectAtIndex:0];
    
    [heroes removeObjectIdenticalTo:@"Superman" inRange:NSMakeRange(0, 1)];
    
    for(int i = 0; i < [heroes count]; ++i) {
        NSLog(@"%@", heroes[i]);
    }
}

void fourthChapter() {
    //CLASS
    Animal *dog = [[Animal alloc] init];
    
    [dog getInfo];
    
    NSLog(@"The dogs name is %@", [dog name]);
    
    [dog setName:@"Spot"];
    
    NSLog(@"The dogs name is %@", [dog name]);
    
    Animal * cat = [[Animal alloc] initWithName:@"Whiskers"];
    
    NSLog(@"The cats name is %@", [cat name]);
    
    NSLog(@"180 lbs = %.2f kg", [dog weightInKg:180]);
    
    NSLog(@"3 + 5 = %d", [dog getSum:3 nextNumber:5]);
    
    NSLog(@"%@", [dog talkToMe:@"Derek"]);
    
    //INHERITANCE
    Koala * herbie = [[Koala alloc] initWithName:@"Herbie"];
    
    NSLog(@"%@", [herbie talkToMe:@"Kevin"]);
    
    //CATEGORIES
    NSLog(@"Did %@ receive shots : %d", herbie.name, [herbie checkedByVet]);
    
    [herbie getShots];
    
    [dog getInfo];
    
    //PROTOCOL
    [herbie lookCute];
    [herbie performTrick];
    
    //BLOCK ANONYMOUS FUNCTION
    float (^getArea) (float width, float height); //declare
    
    getArea = ^float(float width, float height) {
        return width * height;
    };
    
    NSLog(@"Area of 3 width and 50 height : %.1f", getArea(3, 50));
    
    //ENUM
    enum Ratings {
        Poor = 1, Ok = 2, Great = 5
    };
    
    enum Ratings matrixRating = Great;
    
    NSLog(@"Matrix %u", matrixRating);
    
    Dog * grover = [[Dog alloc] initWithName:@"Grover"];
    
    NSArray *animals = [[NSArray alloc] initWithObjects: herbie, grover, nil];
    
    id obj1 = [animals objectAtIndex: 0]; //id is dynamic binding
    id obj2 = [animals objectAtIndex: 1]; // id is generic dynamic variable
    
    [obj1 makeSound];
    [obj2 makeSound];
}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //firstChapter();
        //secondChapter();
        //thirdChapter();
        fourthChapter();
    }
    return 0;
}
