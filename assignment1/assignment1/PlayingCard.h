//
//  PlayingCard.h
//  assignment1
//
//  Created by Cheng Xiang on 6/6/13.
//  Copyright (c) 2013 Cheng Xiang. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;

@end
