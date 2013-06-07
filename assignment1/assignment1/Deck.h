//
//  Deck.h
//  assignment1
//
//  Created by Cheng Xiang on 6/6/13.
//  Copyright (c) 2013 Cheng Xiang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
