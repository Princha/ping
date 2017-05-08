#
# 通用编译规则文件

# 编译命令
CC	= gcc
# GCC 全局编译选项
CCFLAGS = -g -Wall -O0
# C 语言源文件编译方式
SRCC	:= $(wildcard *.c)
COBJ	:= $(SRCC:.c=.o)
# 引用头文件
INCLUDES =
# 引用库文件
LIBS = 
# 目标文件
TARGET	= pinging

.PHONY : clean all

all: $(TARGET)

$(TARGET) : $(COBJ)
	$(CC) -o $@ $^ $(INCLUDES) $(LIBS)

%.o : %.cpp
	$(CC) -c $< $(CCFLAGS) $(INCLUDES)

clean:
	@rm -rf $(COBJ) $(TARGET) *.o
