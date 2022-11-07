# setcookie 

Sets a cookie

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
    <uri>setcookie:org.assimbly</uri>
    <options>
        <name>MyCookie</name>
        <value>MyCookie</value>
        <isSecure>false</isSecure>
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
    <to uri="bean://flowCookieStore?method=addStringAsCookie(${exchange},'MyCookie','MyCookie','dovetail.world','',false)"/>
    <to uri="direct:b"/>
</route>
```



