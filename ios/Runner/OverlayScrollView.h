//
//  OverlayScrolView.h
//  Runner
//
//  Created by Matej Knopp on 28/08/2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface OverlayScrollView : UITableView

- (instancetype)initWithEventForwardingTarget:(UIResponder*)target;

@end

NS_ASSUME_NONNULL_END
