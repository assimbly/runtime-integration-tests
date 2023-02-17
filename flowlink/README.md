# flowlink

Links two separate with each other.

### Component Type

Custom (Assimbly)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

#### XML

```xml

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
    <to uri="example:com"/>
    <to uri="direct:b"/>
</route>
```



