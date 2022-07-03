#include <MyFirstTurboModuleSpec/MyFirstTurboModuleSpec.h>

@interface MyFirstTurboModule : NSObject <NativeMyFirstTurboModuleSpec>
@end

@implementation MyFirstTurboModule

RCT_EXPORT_MODULE()

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const facebook::react::ObjCTurboModule::InitParams &)params {
  return std::make_shared<facebook::react::NativeMyFirstTurboModuleSpecJSI>(params);
}

- (void)getString:(NSString *)id resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject {
  resolve(@{@"result": [NSString stringWithFormat:@"[MyFirstTurboModule] Hello %@ at %lld", id, [[NSNumber numberWithDouble:[[NSDate date] timeIntervalSince1970] * 1000] longLongValue]]});
}

@end

Class MyFirstTurboModuleCls(void) {
  return MyFirstTurboModule.class;
}
