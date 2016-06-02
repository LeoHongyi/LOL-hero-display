//
//  LHYHero.m
//  LOL英雄战士
//
//  Created by hongyi liu on 6/2/16.
//  Copyright © 2016 hongyi liu. All rights reserved.
//

#import "LHYHero.h"

@implementation LHYHero
+(instancetype)heroWithDict:(NSDictionary *)dict
{
    LHYHero *hero = [[self alloc]init];
    hero.name = dict[@"name"];
    hero.icon = dict[@"icon"];
    hero.intro = dict[@"intro"];
    return hero;
}
@end
