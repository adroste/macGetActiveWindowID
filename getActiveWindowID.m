// Compile this way:
//      gcc -framework cocoa -x objective-c -o getActiveWindowID getActiveWindowID.m
#import <Cocoa/Cocoa.h>


int main() {
    CGWindowListOption listOptions = kCGWindowListOptionOnScreenOnly | kCGWindowListExcludeDesktopElements;
    CFArrayRef windowList = CGWindowListCopyWindowInfo(listOptions, kCGNullWindowID);
    for (NSMutableDictionary* entry in (NSArray*)windowList)
    {     
        NSNumber *wnumber = [entry objectForKey: (id)kCGWindowNumber];
        NSNumber *wlevel = [entry objectForKey: (id)kCGWindowLayer];
        
        if ([wlevel integerValue] == 0) {
            printf("%ld\n", [wnumber integerValue]);
            return 0;
        }
    }
    return 0;
}
