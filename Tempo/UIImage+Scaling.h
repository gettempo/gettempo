//
//  UIImage+Scaling.h
//  Tempo
//
//  Created by Steven Lyons on 2/26/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

@interface UIImage (Scaling)

- (UIImage *) imageScaledToSize:(CGSize)size;
- (UIImage *) imageScaledToFitSize:(CGSize)size;

@end
