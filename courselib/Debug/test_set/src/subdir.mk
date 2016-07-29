################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../test_set/src/driver.cpp \
../test_set/src/googletest.cpp 

OBJS += \
./test_set/src/driver.o \
./test_set/src/googletest.o 

CPP_DEPS += \
./test_set/src/driver.d \
./test_set/src/googletest.d 


# Each subdirectory must supply rules for building sources it contributes
test_set/src/%.o: ../test_set/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	/usr/local/bin/g++-5 -std=c++11 -O0 -g3 -gdwarf-3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


