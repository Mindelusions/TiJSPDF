//
//  Appcelerator Titanium Mobile
//  WARNING: this is a generated file and should not be modified
//

#import <UIKit/UIKit.h>
#define _QUOTEME(x) #x
#define STRING(x) _QUOTEME(x)

NSString * const TI_APPLICATION_DEPLOYTYPE = @"development";
NSString * const TI_APPLICATION_ID = @"com.jspdf";
NSString * const TI_APPLICATION_PUBLISHER = @"Anthony Decena";
NSString * const TI_APPLICATION_URL = @"http://anthonydecena.com";
NSString * const TI_APPLICATION_NAME = @"JSPDF";
NSString * const TI_APPLICATION_VERSION = @"1.0";
NSString * const TI_APPLICATION_DESCRIPTION = @"JSPDF plugin for Titanium Mobile applications";
NSString * const TI_APPLICATION_COPYRIGHT = @"2011 by Anthony Decena";
NSString * const TI_APPLICATION_GUID = @"3cd3bfc3-5de9-45fd-9434-9df65ffbd895";
BOOL const TI_APPLICATION_ANALYTICS = true;

#ifdef TARGET_IPHONE_SIMULATOR
NSString * const TI_APPLICATION_RESOURCE_DIR = @"/Users/adecena/Dev/Titanium/JSPDF/Resources";
#endif

int main(int argc, char *argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

#ifdef __LOG__ID__
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	NSString *documentsDirectory = [paths objectAtIndex:0];
	NSString *logPath = [documentsDirectory stringByAppendingPathComponent:[NSString stringWithFormat:@"%s.log",STRING(__LOG__ID__)]];
	freopen([logPath cStringUsingEncoding:NSUTF8StringEncoding],"w+",stderr);
	fprintf(stderr,"[INFO] Application started\n");
#endif

	int retVal = UIApplicationMain(argc, argv, nil, @"TiApp");
    [pool release];
    return retVal;
}
