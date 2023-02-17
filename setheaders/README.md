# setheaders

Set multiple headers at once.

### Component Type

Custom (Assimbly)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

Note: also a message needs to be set (see dil test)

#### XML

```xml
<step>
    <id>3</id>
    <type>action</type>
    <uri>setheaders:message:names</uri>
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
    <setHeader headerName="lastName">
        <simple>Doe</simple>
    </setHeader>
    <setHeader headerName="firstName">
        <simple>John</simple>
    </setHeader>
    <to uri="direct:b"/>
</route>
```



