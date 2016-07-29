################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
../ics46-templates/googletestlib/src/gtest-all.cc \
../ics46-templates/googletestlib/src/gtest-death-test.cc \
../ics46-templates/googletestlib/src/gtest-filepath.cc \
../ics46-templates/googletestlib/src/gtest-port.cc \
../ics46-templates/googletestlib/src/gtest-printers.cc \
../ics46-templates/googletestlib/src/gtest-test-part.cc \
../ics46-templates/googletestlib/src/gtest-typed-test.cc \
../ics46-templates/googletestlib/src/gtest.cc \
../ics46-templates/googletestlib/src/gtest_main.cc 

CC_DEPS += \
./ics46-templates/googletestlib/src/gtest-all.d \
./ics46-templates/googletestlib/src/gtest-death-test.d \
./ics46-templates/googletestlib/src/gtest-filepath.d \
./ics46-templates/googletestlib/src/gtest-port.d \
./ics46-templates/googletestlib/src/gtest-printers.d \
./ics46-templates/googletestlib/src/gtest-test-part.d \
./ics46-templates/googletestlib/src/gtest-typed-test.d \
./ics46-templates/googletestlib/src/gtest.d \
./ics46-templates/googletestlib/src/gtest_main.d 

OBJS += \
./ics46-templates/googletestlib/src/gtest-all.o \
./ics46-templates/googletestlib/src/gtest-death-test.o \
./ics46-templates/googletestlib/src/gtest-filepath.o \
./ics46-templates/googletestlib/src/gtest-port.o \
./ics46-templates/googletestlib/src/gtest-printers.o \
./ics46-templates/googletestlib/src/gtest-test-part.o \
./ics46-templates/googletestlib/src/gtest-typed-test.o \
./ics46-templates/googletestlib/src/gtest.o \
./ics46-templates/googletestlib/src/gtest_main.o 


# Each subdirectory must supply rules for building sources it contributes
ics46-templates/googletestlib/src/%.o: ../ics46-templates/googletestlib/src/%.cc
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	/usr/local/bin/g++-5 -std=c++11 -O0 -g3 -gdwarf-3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


