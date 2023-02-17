# exchangepattern

Sets the exchangepattern explicitly either to InOnly (One-Way) or InOut (Request-Reply)

### Component Type

Default (Camel)

### Prerequisites

Note that there is one Request-Reply message, while the other One-way is logged to the console.

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



