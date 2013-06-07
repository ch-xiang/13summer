//
//  PlayingCard.m
//  assignment1
//
//  Created by Cheng Xiang on 6/6/13.
//  Copyright (c) 2013 Cheng Xiang. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit;

- (NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return  [NSString stringWithFormat:@"%d%@", [self rank], [self suit]];
}

+ (NSArray *)validSuits
{
    return @[@"♠", @"♥", @"♣", @"♦"];
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit])
        _suit = suit;
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

- (void)setRank:(NSUInteger)rank
{
    if (rank > 0 && rank < 14)
        _rank = rank;
}

@end
