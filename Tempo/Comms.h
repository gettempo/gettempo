//
//  Comms.h
//  Tempo
//
//  Created by Steven Lyons on 2/26/14.
//  Copyright (c) 2014 Lyonspaw Studios. All rights reserved.
//

@protocol CommsDelegate <NSObject>
@optional
- (void) commsDidLogin:(BOOL)loggedIn;
- (void) commsUploadImageProgress:(short)progress;
- (void) commsUploadImageComplete:(BOOL)success;
@end


@interface Comms : NSObject

+ (void) login:(id<CommsDelegate>)delegate;
+ (void) uploadImage:(UIImage *)image withComment:(NSString *)comment forDelegate:(id<CommsDelegate>)delegate;

@end
