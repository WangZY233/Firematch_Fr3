#pragma once
#include <stdio.h>
#include <iostream>
#include <stdlib.h>  
#include <unistd.h> 
#include <iomanip>  //cout输出格式控制
#include <cstring>
#define REQ_HEX_MSG  {0X01,0X03,0X0A,0X00,0X00,0X0C,0X46,0X17}  //读取int型测量值命令
#define REQ_FLOAT_MSG {0X01,0X03,0X04,0X00,0X00,0X0C,0X44,0XFF}    //读取浮点数测量值命令
//#define TEST_RECEIVE_ONE {0X01,0X03,0X18,0X00,0X0F,0XFA,0XED,0XFF,0XF5,0X87,0X19}
extern int status_count; 
extern int bit_count;
extern uint8_t real_485_buffer[32];
class SerialMsg
{
    public:
        //SerialMsg();
        //~SerialMsg();
        int CheckMsg(uint8_t buffer[]);
        void GetMsg(float* receivedFloat);
        enum status 
        {
            head,//头，一个三字节
            Fx,//数据位，一个四字节
            Fy,
            Fz,
            Mx,
            My,
            Mz,
            crc,//crc校验，一个两字节
        };
        enum count_bit
        {
            D1,//数据最高字节
            D2,
            D3,
            D4,//数据最低字节
        };
       
};
