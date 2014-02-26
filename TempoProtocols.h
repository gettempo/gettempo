//
//  TempoProtocols.h
//  Tempo
//
//  Created by Steven Lyons on 2/26/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FacebookSDK/FacebookSDK.h>

// Wraps an Open Graph object (of type "scrumps:meal") that has just two properties,
// an ID and a URL. The FBGraphObject allows us to create an FBGraphObject instance
// and treat it as an SCOGMeal with typed property accessors.
@protocol SCOGMeal<FBGraphObject>

@property (retain, nonatomic) NSString        *id;
@property (retain, nonatomic) NSString        *url;

@end

// Wraps an Open Graph object (of type "scrumps:eat") with a relationship to a meal,
// as well as properties inherited from FBOpenGraphAction such as "place" and "tags".
@protocol SCOGEatMealAction<FBOpenGraphAction>

@property (retain, nonatomic) id<SCOGMeal>    meal;

@end


