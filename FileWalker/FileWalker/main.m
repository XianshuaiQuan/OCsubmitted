//
//  main.m
//  FileWalker
//
//  Created by 全先帅 on 2020/11/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //文件管理器
        NSFileManager* manger=[NSFileManager defaultManager];
        //创建起始路径，stringByExpandingTildeInPath接收“～”并将其展开成主目录
        NSString* home=[@"~"stringByExpandingTildeInPath];
        //创建目录迭代器
        NSDirectoryEnumerator* direnum=[manger enumeratorAtPath:home];
        //创建文件数组
        NSMutableArray* files=[NSMutableArray arrayWithCapacity:42];
        
        NSString* filename;
        while(filename=[direnum nextObject])
        {
            //判断扩展名
            if( [[filename pathExtension] isEqualTo:@"jpg"])
            {
                [files addObject:filename];
            }
        }
        
        NSEnumerator* fileenum=[files objectEnumerator];
        while(filename=[fileenum nextObject])
        {
            NSLog(@"%@",filename);
        }
    }
    return 0;
}
