# component

Packs files or unpacks archives

### Component Type

Custom (Dovetail)

### Prerequisites

No

## Tests

- camel2: happy flow
- dil: happy flow

# ZIP - Config Examples

## DIL

#### XML

```xml
<step>
    <id>3</id>
    <type>action</type>
    <uri>zip</uri>
    <options>
        <usingIterator>true</usingIterator>
        <preservePathElements>true</preservePathElements>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 3,
    "type": "action",
    "uri": "zip",
    "options": {
      "usingIterator": "true",
      "preservePathElements": "true"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 3
  type: "action"
  uri: "zip"
    options:
      usingIterator: "true"
      preservePathElements: "true"
```

## Camel 2

#### XML

```xml
<route id="95b43ec0-d0f7-11ec-83f5-3747809ef661">
    <from uri="activemq:ID_627a6b7638c74a0374000585_test_63753110-5551-11ed-97ed-99c7ae0d1eca"/>
    <to uri="dataformat:zipFileDataFormat:marshal?usingIterator=true"/>
    <setHeader headerName="CamelFileName">
        <simple>${file:onlyname.noext}.zip</simple>
    </setHeader>
    <to uri="activemq:ID_627a6b7638c74a0374000585_test_95b43ec0-d0f7-11ec-83f5-3747809ef661_split?timeToLive=86400000"/>
</route>
```

# UNZIP - Config Examples

## DIL

#### XML

```xml
<step>
    <id>5</id>
    <type>action</type>
    <uri>unzip</uri>
    <options>
        <usingIterator>true</usingIterator>
    </options>
</step>
```

#### JSON

```json
{
  "step": {
    "id": 5,
    "type": "action",
    "uri": "unzip",
    "options": {
      "usingIterator": "true"
    }
  }
}
```

#### YAML

```yaml
---
step:
  id: 5
  type: "action"
  uri: "unzip"
    options:
      usingIterator: "true"
```

## Camel 2

#### XML

```xml
<route id="5597c420-5544-11ed-97ed-99c7ae0d1eca">
    <from uri="activemq:ID_627a6b7638c74a0374000585_test_95b43ec0-d0f7-11ec-83f5-3747809ef661_split"/>
    <to uri="dataformat:checkedZipFileDataFormat:unmarshal?usingIterator=true"/>
    <split streaming="true">
        <simple>${body}</simple>
        <to uri="activemq:ID_627a6b7638c74a0374000585_test_5597c420-5544-11ed-97ed-99c7ae0d1eca_split?timeToLive=86400000"/>
    </split>
</route>
```