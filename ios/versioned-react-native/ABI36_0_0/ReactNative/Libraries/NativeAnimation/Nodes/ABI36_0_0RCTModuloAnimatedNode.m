/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <ABI36_0_0React/ABI36_0_0RCTModuloAnimatedNode.h>

@implementation ABI36_0_0RCTModuloAnimatedNode

- (void)performUpdate
{
  [super performUpdate];
  NSNumber *inputNode = self.config[@"input"];
  NSNumber *modulus = self.config[@"modulus"];
  ABI36_0_0RCTValueAnimatedNode *parent = (ABI36_0_0RCTValueAnimatedNode *)[self.parentNodes objectForKey:inputNode];
  const float m = modulus.floatValue;
  self.value = fmodf(fmodf(parent.value, m) + m, m);
}

@end