//
//  ViewController.m
//  Demo
//
//  Created by Steven on 2018/9/8.
//  Copyright © 2018年 Steven. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (IBAction)load:(id)sender {
    
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"num" ofType:@"csv"];
//    NSError *error = nil;
//    NSString *fileContents = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
//    //取出每一行的数据
//    if (error) NSLog(@"error - /n%@", error.description);
//    NSArray *_allLinedStrings = [fileContents componentsSeparatedByString:@"\r\n"];
//    NSLog(@"data -- %@",_allLinedStrings);
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"num" ofType:@"csv"];
    
    NSError *error = nil;
    
    NSString *fileContents = [NSString stringWithContentsOfFile:path encoding:NSUTF16StringEncoding error:&error];
   
    NSArray *nums = [fileContents componentsSeparatedByString:@"\n"];
    NSMutableArray *users = @[].mutableCopy;
    for (int i = 0; i < nums.count; i++) {
        if (i == 0) continue;
        User *u = [[User alloc] init];
        NSArray *temp = [nums[i] componentsSeparatedByString:@"\t"];
        if (temp.count < 2 ) continue;
        u.phone = temp[0];
        u.count = temp[1];
        [users addObject:u];
        NSLog(@"%@", u);
    }
    
    NSLog(@"%@", users);
    
}



@end
