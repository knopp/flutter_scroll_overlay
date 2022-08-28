// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import "OverlayScrollView.h"
#import "PassiveGestureRecognizer.h"

#define UNIT_RAND ((float)rand() / RAND_MAX)

@interface OverlayScrollView ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation OverlayScrollView

- (instancetype)initWithEventForwardingTarget:(UIResponder*)target {
  self = [super init];

  if (self) {
    self.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.25];
    self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.separatorInset = UIEdgeInsetsZero;
    self.delegate = self;
    self.dataSource = self;
    self.allowsSelection = NO;
    [self addGestureRecognizer:[[PassiveGestureRecognizer alloc]
                                   initWithEventForwardingTarget:target]];
  }

  return self;
}

- (NSInteger)tableView:(UITableView*)tableView
    numberOfRowsInSection:(NSInteger)section {
  return 1000;
}

- (CGFloat)tableView:(UITableView*)tableView
    heightForRowAtIndexPath:(NSIndexPath*)indexPath {
  return 80.0;
}

- (UITableViewCell*)tableView:(UITableView*)tableView
        cellForRowAtIndexPath:(NSIndexPath*)indexPath {
  static NSString* const kReuseIdentifier = @"OverlayScrollViewItemKey";

  UITableViewCell* cell =
      [tableView dequeueReusableCellWithIdentifier:kReuseIdentifier];

  if (cell == NULL) {
    cell = [[UITableViewCell alloc] init];
  }

  cell.backgroundColor = [UIColor colorWithRed:UNIT_RAND
                                         green:UNIT_RAND
                                          blue:UNIT_RAND
                                         alpha:(indexPath.row % 2 ? 0.80 : 0.0)];
  return cell;
}

@end
