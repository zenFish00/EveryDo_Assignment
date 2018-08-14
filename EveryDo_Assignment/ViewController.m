//
//  ViewController.m
//  EveryDo_Assignment
//
//  Created by Nathan Wainwright on 2018-08-14.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "ViewController.h"
#import "ToDoItem.h"
#import "EveryDoCellClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ToDoItem *firstItem = [[ToDoItem alloc] initWithTaskTitle:@"First One here" andDescription:@"This is a long item?" alsoThePriority:1 andFinallyTheStatus:NO];
    ToDoItem *secondItem = [[ToDoItem alloc] initWithTaskTitle:@"Second One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:YES];
    ToDoItem *thirdItem = [[ToDoItem alloc] initWithTaskTitle:@"third One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:2 andFinallyTheStatus:NO];
    ToDoItem *fourthItem = [[ToDoItem alloc] initWithTaskTitle:@"fourth One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:1 andFinallyTheStatus:NO];
    ToDoItem *fifthItem = [[ToDoItem alloc] initWithTaskTitle:@"FIFTH One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:2 andFinallyTheStatus:YES];
    ToDoItem *sixthItem = [[ToDoItem alloc] initWithTaskTitle:@"sixTH One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:1 andFinallyTheStatus:NO];
    ToDoItem *seventhItem = [[ToDoItem alloc] initWithTaskTitle:@"SEVenth One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:YES];
    ToDoItem *eightItem = [[ToDoItem alloc] initWithTaskTitle:@"8 One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:NO];
    ToDoItem *ninthItem = [[ToDoItem alloc] initWithTaskTitle:@"NINE NINE One Here" andDescription:@"I should fill with Lorum Ipsum" alsoThePriority:3 andFinallyTheStatus:YES];

    
    self.allTasks = @[firstItem, secondItem, thirdItem, fourthItem, fifthItem, sixthItem, seventhItem, eightItem, ninthItem];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.allTasks.count;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EveryDoCellClass *cell = [tableView dequeueReusableCellWithIdentifier:@"everyDoCell" forIndexPath:indexPath];
    
    ToDoItem *currentItem = self.allTasks[indexPath.row];
    
//    @property (weak, nonatomic) IBOutlet UILabel *taskItemCheckOff;
//    @property (weak, nonatomic) IBOutlet UILabel *taskItemTitle;
//    @property (weak, nonatomic) IBOutlet UILabel *taskItemStatus;
    
    cell.taskItemCheckOff.text = @(currentItem.taskItemStatus).stringValue;
    
    cell.taskItemTitle.text = currentItem.taskTitle;
    cell.taskItemStatus.text = @(currentItem.taskItemPriority).stringValue;
    
    
    
    
    
    return cell;
}

@end
