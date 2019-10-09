#import "FlutterCustomDialogPlugin.h"
#import <flutter_custom_dialog/flutter_custom_dialog-Swift.h>

@implementation FlutterCustomDialogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterCustomDialogPlugin registerWithRegistrar:registrar];
}
@end
