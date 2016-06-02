//
//  LHYHero.h
//  LOL英雄战士
//
//  Created by hongyi liu on 6/2/16.
//  Copyright © 2016 hongyi liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LHYHero : NSObject
/*name*/
@property(nonatomic,strong) NSString *name;
@property(nonatomic,strong) NSString *icon;
@property(nonatomic,strong) NSString *intro;
+(instancetype)heroWithDict:(NSDictionary *)dict;
@end
