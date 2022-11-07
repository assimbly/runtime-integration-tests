# jsontoxml

Transforms JSON to XML

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
    <uri>jsontoxml</uri>
    <options>
        <false>false</false>
        <checkJsonKeys>false</checkJsonKeys>
        <changeArrayElements>false</changeArrayElements>
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
    <to uri="dataformat:custom-xmljson:unmarshal?addRoot=false&amp;checkJsonKeys=false&amp;changeArrayElements=false"/>
    <to uri="direct:b"/>
</route>
```



