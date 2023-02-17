# pdf

Replace Adobe Acrobat Form Elements by matching header names.

### Component Type

Custom (Dovetail)

### Prerequisites

This test uses two flows:

* PDF
* PDF_FILE

First one runs the test, the second one provides the PDF through an URL.

To run the test:

1. The template.pdf file needs to be stored in the user home directory.
2. Deploy both files to the deploy folder.
3. Call the PDF url in the browser.

## Tests

- camel2: happy flow
- dil: happy flow

# Config Examples

## DIL

#### XML

```xml
<step>
    <id>4</id>
    <type>sink</type>
    <uri>file:C:/data/pdf</uri>
    <options>
        <fileName>result.pdf</fileName>
    </options>
</step>s
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
    <setHeader headerName="name">
        <constant>John Doe</constant>
    </setHeader>
    <setHeader headerName="address">
        <constant>Main Street 2</constant>
    </setHeader>
    <setHeader headerName="zip">
        <constant>10000, Lissabon</constant>
    </setHeader>
    <to uri="pdf-transform://http://localhost:9002/pdfs/flowid?tenant=RAW(tenant)&amp;uuid=RAW(12345)"/>
    <to uri="direct:b"/>
</route>
```



