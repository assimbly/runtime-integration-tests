# component

Connect to FTP servers (FTP, SFTP, FTPS) and read / write files

### Component Type

Custom (Dovetail)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

#### XML

```xml
<step>
    <id>3</id>
    <type>action</type>
    <uri>ftp:dlpuser@ftp.dlptest.com:21//tmp</uri>
    <options>
        <autoCreate>true</autoCreate>
        <charset>utf-8</charset>
        <fileExist>Override</fileExist>
        <fileName>test.txt</fileName>
        <passiveMode>true</passiveMode>
        <disconnect>true</disconnect>
        <throwExceptionOnConnectFailed>true</throwExceptionOnConnectFailed>
        <bridgeErrorHandler>true</bridgeErrorHandler>
        <password>RAW(rNrKYTX9g7z3RgJRmxWuGHbeu)</password>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 3,
    "type": "action",
    "uri": "ftp:dlpuser@ftp.dlptest.com:21//tmp",
    "options": {
      "autoCreate": "true",
      "charset": "utf-8",
      "fileExist": "Override",
      "fileName": "test.txt",
      "passiveMode": "true",
      "disconnect": "true",
      "throwExceptionOnConnectFailed": "true",
      "bridgeErrorHandler": "true",
      "password": "RAW(rNrKYTX9g7z3RgJRmxWuGHbeu)"
      
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "ftp:dlpuser@ftp.dlptest.com:21//tmp"
  options:
    autoCreate: "true"
    charset: "utf-8"
    fileExist: "Override"
    fileName: "test.txt"
    passiveMode: "true"
    disconnect: "true"
    throwExceptionOnConnectFailed: "true"
    bridgeErrorHandler: "true"
    password: "RAW(rNrKYTX9g7z3RgJRmxWuGHbeu)"
```

## Camel 2

#### XML

```xml
<route id="28fb0411-d090-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a64c238c74a00130006fc_test_c80fae60-f891-11ec-bb33-77f12be2f398"/>
    <toD uri="ftp:dlpuser@ftp.dlptest.com:21//tmp/?autoCreate=true&amp;charset=utf-8&amp;fileExist=Override&amp;fileName=test.txt&amp;passiveMode=true&amp;disconnect=true&amp;throwExceptionOnConnectFailed=true&amp;consumer.bridgeErrorHandler=true&amp;password=RAW(rNrKYTX9g7z3RgJRmxWuGHbeu)"/>
    <to uri="activemq:ID_627a64c238c74a00130006fc_test_c80fae60-f891-11ec-bb33-77f12be2f399?timeToLive=86400000"/>
</route>
```



