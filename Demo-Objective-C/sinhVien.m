//
//  sinhVien.m
//  Demo-Objective-C
//
//  Created by Vu Ngoc Cong on 6/26/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sinhVien.h"

@implementation sinhVien: NSObject

// tạo biến thể hiện và get set mặc định được tạo ra.
@synthesize ten=_ten;
@synthesize tuoi=_tuoi;
@synthesize email=_email;

// contructor mặc định và mặc định được tạo ra.
-(instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@"init");
    }
    return self;
}

// contructor có tham số
-(instancetype)initSinhVien:(NSString *)tenSV :(int)tuoiSV :(NSString *)email{
    self=[super init];
    self.ten=tenSV;
    self.tuoi=tuoiSV;
    self.email=email;
    return self;
    
}

// chỉ dùng đối tượng để gọi
-(void)thongTin{
    NSLog(@"Thong tin");
}

// hàm static có thể dùng class để gọi, nhưng không sử dụng được các thuộc tính bthuong
+(void)diemSV{
    NSLog(@"diem sinh vien");
}

@end
