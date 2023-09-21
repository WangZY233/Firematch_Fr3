#include "SerialPort.h"
#include "msg_d.h"
#include "ros/ros.h"
SerialPort::SerialPort()
{
    
}
SerialPort::SerialPort(const std::string &path)
{
    _path = path;
    _open_options = SerialPort::defaultOptions;
}
SerialPort::~SerialPort()
{
    close();
}

const SerialPort::OpenOptions SerialPort::defaultOptions = {
    true,             //    bool autoOpen;
    SerialPort::BR115200,     //    BaudRate baudRate;
    SerialPort::DataBits8,  //    DataBits dataBits;
    SerialPort::StopBits1,  //    StopBits stopBits;
    SerialPort::ParityNone, //    Parity parity;
    false,            
    false,           
    false,            
    0,                
    50,               
};

SerialPort::BaudRate SerialPort::BaudRateMake(unsigned long baudrate)
{
    switch (baudrate)
    {
    case 50:
        return BR50;
    case 75:
        return BR75;
    case 134:
        return BR134;
    case 150:
        return BR150;
    case 200:
        return BR200;
    case 300:
        return BR300;
    case 600:
        return BR600;
    case 1200:
        return BR1200;
    case 1800:
        return BR1800;
    case 2400:
        return BR2400;
    case 4800:
        return BR4800;
    case 9600:
        return BR9600;
    case 19200:
        return BR19200;
    case 38400:
        return BR38400;
    case 57600:
        return BR57600;
    case 115200:
        return BR115200;
    case 230400:
        return BR230400;
    case 460800:
        return BR460800;
    case 500000:
        return BR500000;
    case 576000:
        return BR576000;
    case 921600:
        return BR921600;
    case 1000000:
        return BR1000000;
    case 1152000:
        return BR1152000;
    case 1500000:
        return BR1500000;
    case 2000000:
        return BR2000000;
    case 2500000:
        return BR2500000;
    case 3000000:
        return BR3000000;
    case 3500000:
        return BR3500000;
    case 4000000:
        return BR4000000;
    default:
        break;
    }
    return BR0;
}

bool SerialPort::open(const std::string &path, const OpenOptions &options)
{
    if (_path != path)
        _path = path;
    if (_open_options != options)
        _open_options = options;
    _tty_fd = ::open(path.c_str(), O_RDWR | O_NOCTTY | O_NONBLOCK);
    if (_tty_fd < 0)
    {
        return false;
    }

    struct termios tios;    //struct termios 结构用来持有所有的当前线路设置, 给这个 tty 设备的一个特定端口. 这些线路设置控制当前波特率, 数据大小, 数据流控设置, 以及许多其他值
    termiosOptions(tios, options);
    tcsetattr(_tty_fd, TCSANOW, &tios); // TCSANOW立刻对值进行修改
    tcflush(_tty_fd, TCIOFLUSH);        // 清除所有正在发生的I/O数据。
    _is_open = true;
    return _is_open;
}

bool SerialPort::open()
{
    _is_open = open(_path, _open_options);
    return _is_open;
}

void SerialPort::termiosOptions(termios &tios, const OpenOptions &options)
{
    tcgetattr(_tty_fd, &tios);  //取得终端介质（fd）初始值，并把其值 赋给temios_p;函数可以从后台进程中调用；但是，终端属性可能被后来的前 台进程所改变。

    cfmakeraw(&tios);
    tios.c_cflag &= ~(CSIZE | CRTSCTS); //控制模式标志
    tios.c_iflag &= ~(IXON | IXOFF | IXANY | IGNPAR);   //输入模式标志
    tios.c_lflag &= ~(ECHOK | ECHOCTL | ECHOKE);    //区域模式标志或本地模式标志或局部模式
    tios.c_oflag &= ~(OPOST | ONLCR);   //输出模式标志

    cfsetispeed(&tios, options.baudRate);
    cfsetospeed(&tios, options.baudRate);

    tios.c_iflag |= (options.xon ? IXON : 0) | (options.xoff ? IXOFF : 0) | (options.xany ? IXANY : 0);

    // data bits

    int databits[] = {CS5, CS6, CS7, CS8};
    tios.c_cflag &= ~0x30;
    tios.c_cflag |= databits[options.dataBits];

    // stop bits
    if (options.stopBits == StopBits2)
    {
        tios.c_cflag |= CSTOPB;
    }
    else
    {
        tios.c_cflag &= ~CSTOPB;
    }

    // parity
    if (options.parity == ParityNone)
    {
        tios.c_cflag &= ~PARENB;
    }
    else
    {
        tios.c_cflag |= PARENB;

        if (options.parity == PariteMark)
        {
            tios.c_cflag |= PARMRK;
        }
        else
        {
            tios.c_cflag &= ~PARMRK;
        }

        if (options.parity == ParityOdd)
        {
            tios.c_cflag |= PARODD;
        }
        else
        {
            tios.c_cflag &= ~PARODD;
        }
    }

    tios.c_cc[VMIN] = options.vmin;
    tios.c_cc[VTIME] = options.vtime;
}

bool SerialPort::isOpen() const
{
    return _is_open;
}

int SerialPort::write(const void *data, int length)
{
    return ::write(_tty_fd, data, length);
}

int SerialPort::read(void *data, int length)
{
    return ::read(_tty_fd, data, length);
}

void SerialPort::close()
{
    if(_is_open){
        ::close(_tty_fd);
        _is_open = false;
    } 
}

void SerialPort::openThread()
    {
    SerialMsg msg;
    thread serverThread(
        [&]()->void
        {
            uint8_t buffer[1];//这一段写的很答辩，但是可以用就完事了，不想改数据类型了
            int ret = 0;//如果有人可以解决这个不能连续读取的问题可以改回来，然后用那个注释掉的check函数、
            //直接把变量改成指针就完事了，懒得改了
            // signalInt.emit(10);
            
            while (_is_open)
            {
                memset(buffer, 0, 1);   //将buffer所指向的一块内存中的每个字节的内容全部设置为指定的ASCII值,块的大小由第三个参数指定,这个函数通常为新申请的内存做初始化工作
                ret = this->read(buffer, 1);    //this指向当前对象的实例
                if (ret > 0)
                {
                    //cout << hex << ret << "\t";
                   // cout << buffer[0]<< endl;
                   msg.CheckMsg(buffer);
                }
            }
            // signalInt.emit(11);
            return;
        });

    serverThread.detach();
    // return _is_open;
}

bool operator==(const SerialPort::OpenOptions &lhs, const SerialPort::OpenOptions &rhs)
{
    return lhs.autoOpen == rhs.autoOpen && lhs.baudRate == rhs.baudRate && lhs.dataBits == rhs.dataBits && lhs.parity == rhs.parity && lhs.stopBits == rhs.stopBits && lhs.vmin == rhs.vmin && lhs.vtime == rhs.vtime && lhs.xon == rhs.xon && lhs.xoff == rhs.xoff && lhs.xany == rhs.xany;
}

bool operator!=(const SerialPort::OpenOptions &lhs, const SerialPort::OpenOptions &rhs)
{
    return !(lhs == rhs);
}

