# groovyscript

Runs Groovy scripts.

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
    <uri>groovy:Ly8gU2V0dGluZyB0aGUgYm9keSBvZiB0aGUgbWVzc2FnZQpyZXN1bHQgPSAiTXkgbmV3IGJvZHkiCgo=</uri>
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
    <to uri="sandbox://groovy?script=RAW(Ly8gU2V0dGluZyB0aGUgYm9keSBvZiB0aGUgbWVzc2FnZQpyZXN1bHQgPSAiTXkgbmV3IGJvZHkiCgo=)"/>
    <to uri="direct:b"/>
</route>
```



