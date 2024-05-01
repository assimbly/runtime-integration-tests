# http inbound

Creates an HTTP endpoint

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
    <id>1</id>
    <type>source</type>
    <uri>https://0.0.0.0:9001/1/httpinbound</uri>
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
    <from uri="jetty-nossl:http://0.0.0.0:9001/1/HttpInbound?httpBinding=#customHttpBinding&amp;matchOnUriPrefix=false"/>
    <removeHeaders pattern="CamelHttp*"/>
    <to uri="direct:b"/>
</route>
```



