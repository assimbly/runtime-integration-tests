# soap

Call a SOAP Webservice.

### Component Type

Custom (Dovetail)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

## Config Examples


# Config Examples

## DIL

#### XML

```xml
<step>
    <id>3</id>
    <type>action</type>
    <uri>soap:http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso</uri>
    <options>
        <params>WSDL</params>
        <action>FullCountryInfo</action>
        <extract>true</extract>
        <smart>true</smart>
        <httpHeaders>W3siX2lkIjoiNjJjZTk1MTY1NWYwMmUwMDExMDAwNGE3IiwibmFtZSI6IkFwaVRva2VuIiwidmFsdWUiOiIxMjMifV0=</httpHeaders>							
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
    <to uri="soap://http://webservices.oorsprong.org/websamples.countryinfo/CountryInfoService.wso?params=WSDL&amp;action=FullCountryInfo&amp;extract=true&amp;smart=true&amp;httpHeaders=W3siX2lkIjoiNjJjZTk1MTY1NWYwMmUwMDExMDAwNGE3IiwibmFtZSI6IkFwaVRva2VuIiwidmFsdWUiOiIxMjMifV0="/>
    <to uri="direct:b"/>
</route>
```



