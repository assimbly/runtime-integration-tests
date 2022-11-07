# Samba

Send/Receive files through SMB protocol 

### Component Type

Custom (Dovetail). 

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
    <id>4</id>
    <type>sink</type>
    <uri>smb://admin@DESKTOP-FMIR5F0/samba</uri>
    <options>
        <autoCreate>true</autoCreate>
        <charset>utf-8</charset>
        <fileExist>Override</fileExist>
        <password>secret</password>
    </options>
</step>
```

#### JSON

```json

```

#### YAML

```yaml

```

## Camel 2

#### XML

```xml
<route id="1">
    <from uri="direct:a"/>
    <toD uri="smb://admin@DESKTOP-FMIR5F0/samba?autoCreate=true&amp;charset=utf-8&amp;fileExist=Override&amp;consumer.bridgeErrorHandler=true&amp;password=secret"/>
    <to uri="direct:b"/>
</route>
```



