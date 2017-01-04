//
//  JotDrawingContainer.m
//  jot
//
//  Created by Laura Skelton on 5/12/15.
//
//

#import "JotDrawingContainer.h"

@implementation JotDrawingContainer

#pragma mark - Touches


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    
    [self.delegate jotDrawingContainerTouchMovedToPoint:[[touches anyObject] locationInView:self]];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    
    [self.delegate jotDrawingContainerTouchEnded];
}

@end
