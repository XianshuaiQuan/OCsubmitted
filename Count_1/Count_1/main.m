//
//  main.m
//  Count_1
//
//  Created by 全先帅 on 2020/11/14.
//

#import <Foundation/Foundation.h>

void count_1()
{
    NSLog(@"The numbers from 1 to 5:");
    for(int i=0;i<5;i++)
    {
        NSLog(@"%d\n",i+1);
    }
}
void count_2()
{
    int count=5;
    NSLog(@"The numbers from 1 to %d:",count);
    for(int i=0;i<count;i++)
    {
        NSLog(@"%d\n",i+1);
    }
}
void word_length_1()
{
    const char* words[4]={"aardvark","abacus","allude","zygote"};
    int wordCount=4;
    for(int i=0;i<wordCount;i++)
    {
        NSLog(@"%s is %lu characters long",words[i],strlen(words[i]));
    }
}
void word_length_2()
{
    const char* words[4]={"Joe-Bob \"Handyman\" Brown","Jacksonville \"Sly\" Murphy","Shinara Bain","George \"Guitar\" Books"};
    int wordCount=4;
    for(int i=0;i<wordCount;i++)
    {
        NSLog(@"%s is %lu characters long",words[i],strlen(words[i]));
    }
}
void word_length_3()
{
    //直接从文件读取
    FILE* wordFile=fopen("/Users/quanxianshuai/Desktop/IOSLearning/Objective-C基础/Count_1/words.txt", "r");
    char word[100];
    while(fgets(word,100,wordFile))
    {
        word[strlen(word)-1]='\0';//fgets会读取换行符，替换换行符
        NSLog(@"%s is %lu characters long",word,strlen(word));
        
    }
    fclose(wordFile);
}
void word_length_4(int argc,const char* argv[])
{
    if(argc==1)
    {
        NSLog(@"you need to privade a filename");
        return;
    }
    //直接从文件读取
    FILE* wordFile=fopen(argv[1], "r");
    char word[100];
    while(fgets(word,100,wordFile))
    {
        word[strlen(word)-1]='\0';//fgets会读取换行符，替换换行符
        NSLog(@"%s is %lu characters long",word,strlen(word));
        
    }
    fclose(wordFile);
}


int main(int argc, const char * argv[])
{
    //count_1();
    //count_2();
    //word_length_1();
    //word_length_2();
    //word_length_3();
    word_length_4(argc,argv);
    return 0;
}

