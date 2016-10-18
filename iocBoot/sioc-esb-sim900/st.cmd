#!../../bin/linux-x86_64/sim900

epicsEnvSet( "STREAM_PROTOCOL_PATH","../../sim900App/Db:.")

< envPaths

cd ${TOP}

dbLoadDatabase "dbd/sim900.dbd"
sim900_registerRecordDeviceDriver pdbbase

epicsEnvSet("P","ESB:SIM900")
epicsEnvSet("PROTOFILE","sim900.proto")

drvAsynIPPortConfigure ("L0","ts-esb-06:2004",0,0,0)

#asynSetTraceMask("L0",-1,0x9)
#asynSetTraceIOMask("L0",-1,0x2)

dbLoadRecords("db/sim900.db","IOCNAME=${IOC},P=$(P),PROTOFILE=$(PROTOFILE),PORT=P0,L=L0,A=0")

cd ${TOP}/iocBoot/${IOC}
iocInit()

