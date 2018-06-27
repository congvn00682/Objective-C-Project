//
//  sinhVien.h
//  Demo-Objective-C
//
//  Created by Vu Ngoc Cong on 6/26/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

#ifndef sinhVien_h
#define sinhVien_h


#endif /* sinhVien_h */

#import <UIKit/UIKit.h>

@interface sinhVien: NSObject

@property int tuoi;
@property NSString *ten, *email;

-(void) thongTin; // hàm
+(void) diemSV; // hàm tĩnh
-(instancetype) initSinhVien: (NSString*) tenSV : (int) tuoiSV : (NSString*) email;

@end
