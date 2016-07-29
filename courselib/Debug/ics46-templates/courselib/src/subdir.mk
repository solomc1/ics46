################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../ics46-templates/courselib/src/driver.cpp \
../ics46-templates/courselib/src/ics46goody.cpp \
../ics46-templates/courselib/src/ics_exceptions.cpp \
../ics46-templates/courselib/src/test_map.cpp \
../ics46-templates/courselib/src/test_priority_queue.cpp \
../ics46-templates/courselib/src/test_queue.cpp \
../ics46-templates/courselib/src/test_set.cpp 

OBJS += \
./ics46-templates/courselib/src/driver.o \
./ics46-templates/courselib/src/ics46goody.o \
./ics46-templates/courselib/src/ics_exceptions.o \
./ics46-templates/courselib/src/test_map.o \
./ics46-templates/courselib/src/test_priority_queue.o \
./ics46-templates/courselib/src/test_queue.o \
./ics46-templates/courselib/src/test_set.o 

CPP_DEPS += \
./ics46-templates/courselib/src/driver.d \
./ics46-templates/courselib/src/ics46goody.d \
./ics46-templates/courselib/src/ics_exceptions.d \
./ics46-templates/courselib/src/test_map.d \
./ics46-templates/courselib/src/test_priority_queue.d \
./ics46-templates/courselib/src/test_queue.d \
./ics46-templates/courselib/src/test_set.d 


# Each subdirectory must supply rules for building sources it contributes
ics46-templates/courselib/src/%.o: ../ics46-templates/courselib/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	/usr/local/bin/g++-5 -std=c++11 -O0 -g3 -gdwarf-3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


