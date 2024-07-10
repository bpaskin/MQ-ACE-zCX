# MQ and ACE on zCX

Simple MQ to MQ solution with ACE transforming a message from XML to JSON.

Place the XML message on the QM1 QMGR on Queue QM1.  This will causes ACE to pickup the message and place it on QM2 QMGR on queue QM2.  Backout Queue for QM1 is QM1.BOQ.

---

- setup.sh - creates the images and volumes
- start.sh - starts the containers
- stop.sh - stops the containers and removes them

---

Make sure to download the MQ Client as mentioned in the Dockerfile.ace

---

### MQ Explorer Connection

QMGR Name: QM1 | QM2 <br/>
Connect Directly<br/>
<br/>
Hostname: <hostname of system><br/>
Port: 1414 (QM1)| 1415 (QM2)<br/>
Server Connection Channel: QM1.SVRCONN | QM2.SVRCONN<br/>
<br/>
Enable User Identification<br/>
Enable User Identification Compatibility Mode<br/>
Userid: aceuser<br/>
No Password<br/>
<br/>
Finish
