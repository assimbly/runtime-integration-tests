# http outbound

Calls an HTTP endpoint

### Component Type

Default (Camel)

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
    <uri>http://www.testingmcafeesites.com/testcat_al.html</uri>
    <options>							
        <httpMethod>GET</httpMethod>
        <userAgent>Assimbly</userAgent>
        <transferException>true</transferException>
        <cookieStore>#flowCookieStore</cookieStore>
        <throwExceptionOnFailure>true</throwExceptionOnFailure>
        <maxTotalConnections>20</maxTotalConnections>
        <connectionsPerRoute>2</connectionsPerRoute>
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
    <setHeader headerName="CamelHttpMethod">
        <constant>GET</constant>
    </setHeader>
    <setHeader headerName="user-agent">
        <constant>Assimbly</constant>
    </setHeader>
    <to uri="http4://www.testingmcafeesites.com/testcat_al.html?transferException=true&amp;cookieStore=#flowCookieStore&amp;throwExceptionOnFailure=true&amp;maxTotalConnections=20&amp;connectionsPerRoute=2"/>
    <removeHeaders pattern="CamelHttpMethod" excludePattern="breadcrumbId"/>
    <removeHeaders pattern="user-agent" excludePattern="breadcrumbId"/>
    <to uri="direct:b"/>
</route>
```



