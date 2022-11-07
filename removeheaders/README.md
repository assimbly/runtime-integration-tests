# removeheaders

Remove headers with a regular expression.

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
    <uri>removeheaders:Lastname</uri>
    <options>
        <excludePattern>breadcrumbId</excludePattern>
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
    <removeHeaders pattern="Lastname" excludePattern="breadcrumbId"/>
    <to uri="direct:b"/>
</route>
```



