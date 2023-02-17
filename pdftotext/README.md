# pdf2text

Convert a PDF to Text

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
    <id>4</id>
    <type>action</type>
    <uri>pdftotext:id</uri>
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
    <to uri="pdf2txt:d6571783-d06c-11ec-83f5-3747809ef661"/>
    <to uri="direct:b"/>
</route>
```



