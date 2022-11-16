# multipart

Converts a binary body to a multipart form data body

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
    <uri>multipart:SecondPart</uri>                            
    <options>
        <contentType>multipart/form-data</contentType>
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
    <setHeader headerName="MultipartFieldName">
        <simple>SecondPart</simple>
    </setHeader>
    <process ref="multipartProcessor"/>
    <to uri="direct:b"/>
</route>
```



