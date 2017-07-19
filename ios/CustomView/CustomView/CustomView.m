//
//  CustomView.m
//  CustomView
//
//  Created by Kevin Dang on 7/18/17.
//  Copyright © 2017 Matcha. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

+ (void)load {
    MatchaRegisterView(@"github.com/overcyn/customview", ^(MatchaViewNode *node){
        return [[CustomView alloc] initWithViewNode:node];
    });
}

- (id)initWithViewNode:(MatchaViewNode *)viewNode {
    if ((self = [super initWithFrame:CGRectZero])) {
        self.viewNode = viewNode;
    }
    return self;
}

- (void)setNode:(MatchaBuildNode *)value {
    _node = value;
    self.backgroundColor = [UIColor redColor];
}

@end
