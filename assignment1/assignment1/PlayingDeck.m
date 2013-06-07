//
//  PlayingDeck.m
//  assignment1
//
//  Created by Cheng Xiang on 6/6/13.
//  Copyright (c) 2013 Cheng Xiang. All rights reserved.
//

#import "PlayingDeck.h"
#import "PlayingCard.h"

@implementation PlayingDeck

- (id)init
{
    self = [super init];
    
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger rank = 1; rank < 14; rank++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card atTop:YES];
            }
        }
    }
}

@end
