// Copyright 2016 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import <UIKit/UIKit.h>

@interface PassiveGestureRecognizer : UIGestureRecognizer

- (instancetype)initWithEventForwardingTarget:(UIResponder*)target;

@end

