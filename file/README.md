# File

Copy this example component.

### Component Type

Default (Camel)

### Prerequisites

- 

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
    <uri>file:/my/directory</uri>
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
    <to uri="example:com"/>
    <to uri="direct:b"/>
</route>
```



