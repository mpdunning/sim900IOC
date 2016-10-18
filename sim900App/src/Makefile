TOP=../..

include $(TOP)/configure/CONFIG

PROD_IOC = sim900

DBD += sim900.dbd

sim900_DBD += base.dbd
sim900_DBD += stream.dbd
sim900_DBD += asyn.dbd
sim900_DBD += asSupport.dbd
#sim900_DBD += calcSupport.dbd
sim900_DBD += drvAsynIPPort.dbd

sim900_SRCS += sim900_registerRecordDeviceDriver.cpp
sim900_SRCS_DEFAULT += sim900Main.cpp

sim900_LIBS += asyn
sim900_LIBS += autosave
sim900_LIBS += stream
#sim900_LIBS += calc

sim900_LIBS += $(EPICS_BASE_IOC_LIBS)

include $(TOP)/configure/RULES

