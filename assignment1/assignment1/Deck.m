//
//  Deck.m
//  assignment1
//
//  Created by Cheng Xiang on 6/6/13.
//  Copyright (c) 2013 Cheng Xiang. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards;
@end

@implementation Deck

-(NSMutableArray *)cards
{
    if (!_cards)
        _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop)
        [[self cards] insertObject:card atIndex:0];
    else
        [[self cards] addObject:card];
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if ([[self cards] count] > 0)
    {
        unsigned index = arc4random() % [[self cards] count];
        randomCard = [[self cards] objectAtIndex:index];
        [[self cards] removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
