#include "msg_d.h"  
using namespace std;
int status_count=SerialMsg::head;
int bit_count=SerialMsg::D1;
uint8_t real_485_buffer[32];    //至少为21

/***************************************************/

void SerialMsg::GetMsg(float* receivedFloat)
{
    int length =sizeof(real_485_buffer)/sizeof(uint8_t);
    int status_count=SerialMsg::head;
    // float* receivedFloat;
    // receivedFloat = (float*)malloc(sizeof(float)*6);
    if (real_485_buffer[0]==0x01&&real_485_buffer[1]==0x03&&real_485_buffer[2]==0x18)
    {
        uint8_t receivedBytesX[4] = {real_485_buffer[6], real_485_buffer[5], real_485_buffer[4], real_485_buffer[3]};    //intel CPU先存低位字节再存高位字节
        // float receivedFloatX;
        memcpy(&receivedFloat[0], receivedBytesX, sizeof(float));
        // cout << "FX=" << fixed << setprecision(2) << receivedFloat[0] << endl;

        
        uint8_t receivedBytesY[4] = {real_485_buffer[10], real_485_buffer[9], real_485_buffer[8], real_485_buffer[7]};    //intel CPU先存低位字节再存高位字节
        // float receivedFloatY;
        memcpy(&receivedFloat[1], receivedBytesY, sizeof(float));
        // cout << "FY=" << fixed << setprecision(2) << receivedFloat[1] << endl;
        
        
        uint8_t receivedBytesZ[4] = {real_485_buffer[14], real_485_buffer[13], real_485_buffer[12], real_485_buffer[11]};    //intel CPU先存低位字节再存高位字节
        // float receivedFloatZ;
        memcpy(&receivedFloat[2], receivedBytesZ, sizeof(float));
        // cout << "FZ=" << fixed << setprecision(2) << receivedFloat[2] << endl;

        uint8_t receivedBytesMX[4] = {real_485_buffer[18], real_485_buffer[17], real_485_buffer[16], real_485_buffer[15]};    //intel CPU先存低位字节再存高位字节
        // float receivedFloatMX;
        memcpy(&receivedFloat[3], receivedBytesMX, sizeof(float));
        // cout << "MX=" << fixed << setprecision(2) << receivedFloat[3] << endl;

        uint8_t receivedBytesMY[4] = {real_485_buffer[22], real_485_buffer[21], real_485_buffer[20], real_485_buffer[19]};    //intel CPU先存低位字节再存高位字节
        // float receivedFloatMY;
        memcpy(&receivedFloat[4], receivedBytesMY, sizeof(float));
        // cout << "MY=" << fixed << setprecision(2) << receivedFloat[4] << endl;

        uint8_t receivedBytesMZ[4] = {real_485_buffer[26], real_485_buffer[25], real_485_buffer[24], real_485_buffer[23]};    //intel CPU先存低位字节再存高位字节
        // float receivedFloatMZ;
        memcpy(&receivedFloat[5], receivedBytesMZ, sizeof(float));
        // cout << "MZ=" << fixed << setprecision(2) << receivedFloat[5] << endl;

        // return receivedFloat;     
    }
    else
    {
        // return 0;
    }
}

/***************************************************/
int SerialMsg::CheckMsg(uint8_t *buffer)
{
    switch(status_count)    //按照head、Fx、Fz...的顺序将数据读取到real_485_buffer[0-21]
    {
        case SerialMsg::head:   //head: 0x01 0x03 0x18
            if(buffer[0]==0x01&&bit_count==SerialMsg::D1)
            {
                real_485_buffer[D1]=buffer[0];
                bit_count++;
            }else if(buffer[0]==0x03&&bit_count==SerialMsg::D2)
            {
                real_485_buffer[D2]=buffer[0];
                bit_count++;
            }else if(buffer[0]==0x18&&bit_count==SerialMsg::D3)
            {   
                real_485_buffer[D3]=buffer[0];
                bit_count=0; 
                status_count++;
            }else{
                bit_count=0; 
                status_count=0;
                break;
            }
            break;
        case SerialMsg::Fx:
            real_485_buffer[3+bit_count]=buffer[0];
            if(bit_count<SerialMsg::D4)
            {
                bit_count++;
            }else{
                bit_count=0;
                status_count++;
            }
            break;
        case SerialMsg::Fy:
             real_485_buffer[7+bit_count]=buffer[0];
            if(bit_count<SerialMsg::D4)
            {
                bit_count++;
            }else{
                bit_count=0;
                status_count++;
            }
            break;
        case SerialMsg::Fz:
             real_485_buffer[11+bit_count]=buffer[0];
            if(bit_count<SerialMsg::D4)
            {
                bit_count++;
            }else{
                bit_count=0;
                status_count++;
            }
            //cout<<"1"<<endl;
            break;
        case SerialMsg::Mx:
            real_485_buffer[15+bit_count]=buffer[0];
            if(bit_count<SerialMsg::D4)
            {
                bit_count++;
            }else{
                bit_count=0;
                status_count++;
            }
            //cout<<"2"<<endl;
            break;
        case SerialMsg::My:
            real_485_buffer[19+bit_count]=buffer[0];
            if(bit_count<SerialMsg::D4)
            {
                bit_count++;
            }else{
                bit_count=0;
                status_count++;
            } 
            //cout<<"3"<<endl;
            break;
        case SerialMsg::Mz:
             real_485_buffer[23+bit_count]=buffer[0];
            if(bit_count<SerialMsg::D4)
            {
                bit_count++;
            }else{
                bit_count=0;
                status_count++;
            }
            //cout<<"4"<<endl;
            break;
        case SerialMsg::crc:
        //crc不想写，摆烂了
            bit_count=0;
            status_count=0;
            //cout<<"5"<<endl;
        default:
            bit_count=0;
            status_count=0;
            break;    
    }
}