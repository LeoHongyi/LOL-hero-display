//
//  ViewController.m
//  LOL英雄战士
//
//  Created by hongyi liu on 6/2/16.
//  Copyright © 2016 hongyi liu. All rights reserved.
//

#import "ViewController.h"
#import "LHYHero.h"

@interface ViewController ()<UITableViewDataSource>
@property(nonatomic,strong)NSArray *heroes;
@end

@implementation ViewController
-(NSArray *)heroes
{
    if (_heroes == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"heroes.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *heroArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray) {
            LHYHero *hero = [LHYHero heroWithDict:dict];
            [heroArray addObject:hero];
            
        }
        _heroes = heroArray;
        
    }
    return _heroes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.heroes.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    LHYHero *hero = self.heroes[indexPath.row];
    cell.textLabel.text = hero.name;
    cell.imageView.image = [UIImage imageNamed:hero.icon];
    cell.detailTextLabel.text = hero.intro;
    return cell;
}



@end
