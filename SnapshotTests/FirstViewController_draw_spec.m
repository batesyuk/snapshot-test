#import "FirstViewController.h"
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <Expecta+Snapshots/EXPMatchers+FBSnapshotTest.h>

SpecBegin(FirstViewController_draw)

describe(@"FirstViewController_draw", ^{
  
  __block FirstViewController *subject;

  beforeAll(^{
    subject = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
    [subject.view drawViewHierarchyInRect:subject.view.bounds
                       afterScreenUpdates:TRUE];
  });
  
  it(@"renders correctly", ^{
    expect(subject).to.haveValidSnapshot();
  });
  
});

SpecEnd