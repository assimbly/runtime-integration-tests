# component

Scheduler

Note: this just print output to the log

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
    <id>1</id>
    <type>source</type>
    <uri>quartz://ID_627a612138c74a0013000639_timer</uri>
    <options>
        <cron>0+*+*+*+*+?</cron>
        <trigger.timeZone>Europe/Amsterdam</trigger.timeZone>
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
    <from uri="quartz2://ID_627a612138c74a0013000639_timer?cron=0+*+*+*+*+?&amp;trigger.timeZone=Europe/Amsterdam"/>
    <to uri="direct:b"/>
</route>
```



