# removecookie

Removes a cookie

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
    <uri>removecookie:assimbly.org</uri>
    <options>
        <name>MyCookie</name>
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
    <to uri="bean://flowCookieStore?method=removeStringAsCookie(${exchange},'MyCookie','dovetail.world')"/>
    <to uri="direct:b"/>
</route>
```



