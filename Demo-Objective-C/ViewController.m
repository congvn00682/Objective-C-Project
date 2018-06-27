//
//  ViewController.m
//  Demo-Objective-C
//
//  Created by Vu Ngoc Cong on 6/22/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // cách gọi hàm trong Objective C
    [self thongTin];
    [self hieu:5 :3];
    [self chuoiKyTu:@"Cong Vu" :@"congvn@vnpay.vn"];
    [self splitString:str];
    [self check];
    
    // khai báo đối tượng không có tham số
    sinhVien *sv = [[sinhVien alloc]init];
    [sv setTen:@"Cong"];
    [sv setTuoi:23];
    [sv setEmail:@"congvn@vnpay.vn"];
    NSLog(@"tên: %@, tuổi: %d, email: %@", [sv ten], [sv tuoi], [sv email]);
    [sv thongTin];
    [sinhVien diemSV];
    
    // khai báo đối tượng có tham số
    sinhVien *sv1 = [[sinhVien alloc]initSinhVien:@"Dung" :22 :@"dungb@fpt.edu.vn"];
    NSLog(@"tên: %@, tuổi: %d, email: %@", [sv1 ten], [sv1 tuoi], [sv1 email]);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// khai báo hàm ko có tham số truyền vào
- (void)thongTin {
    NSLog(@"Thong tin");
}

// khai báo hàm có tham số truyền vào
- (void) hieu: (int) soA : (int) soB {
    int hieu = soA - soB;
    NSLog(@"Hieu: %d", hieu);
}

// khai báo trả về name với email
-(void) chuoiKyTu: (NSString *) name : (NSString *) email {
    NSLog(@"Name: %@", name);
    NSLog(@"Email: %@", email);
}

// hàm có tham số truyền vào và có gợi ý chức năng của hàm
-(void) tong: (int) numberA Cong: (int) numberB {
    int tong = numberA + numberB;
    NSLog(@"Tong: %d", tong);
}

// cat chuoi trong Objective C
NSString *str = @"Description#Data#IMG";
-(void) splitString: (NSString *) str {
    NSArray *items = [str componentsSeparatedByString:@"#"];
    
    NSString *str1 = [items objectAtIndex:0];
    NSString *str2 = [items objectAtIndex:1];
    NSString *str3 = [items objectAtIndex:2];
 
    NSLog(@"Your 3 strs = %@ %@ %@", str1, str2, str3);
}

// if - else trong objective C
-(void) check {
    int age = 23;
    NSString *name = @"Cong";
    
    if (age == 23 && [name isEqualToString:@"Cong"]) {
        NSLog(@"Tuoi cua %@ la %d", name, age);
    }
}




@end
