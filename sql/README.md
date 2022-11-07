# sql

Queries a SQL database

### Component Type

Default (Camel)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

## Config Examples


# Config Examples

## DIL

#### XML

```xml
<step>
    <id>4</id>
    <type>action</type>
    <uri>sql-custom://dovetail@monitoring.ch4wip2sipng.eu-west-1.rds.amazonaws.com:3306</uri>		
    <options>
        <password>RAW(T25lVHdvMTI=)</password>
        <database>monitoring</database>
        <connectionType>mysql</connectionType>
        <useSSL>false</useSSL>
        <tlsVersion></tlsVersion>
        <escapeChars>false</escapeChars>
        <query>RAW(U0VMRUNUIHZlcnNpb24oKQ==)</query>
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
    <setHeader headerName="timestamp">
        <simple>${date-with-timezone:now:Europe/Amsterdam:yyyy-MM-dd'T'HH:mm:ss}</simple>
    </setHeader>
    <setHeader headerName="name">
        <simple>name</simple>
    </setHeader>
    <setHeader headerName="value">
        <simple>value</simple>
    </setHeader>
    <setHeader headerName="route">
        <simple>Mysql5.7</simple>
    </setHeader>
    <setHeader headerName="escape">
        <simple>no</simple>
    </setHeader>
    <to uri="sql-component://dovetail@monitoring.ch4wip2sipng.eu-west-1.rds.amazonaws.com:3306?password=RAW(T25lVHdvMTI=)&amp;database=monitoring&amp;connectionType=mysql&amp;useSSL=false&amp;tlsVersion=&amp;escapeChars=false&amp;query=RAW(U0VMRUNUIHZlcnNpb24oKQ==)"/>
    <to uri="direct:b"/>
</route>
```



