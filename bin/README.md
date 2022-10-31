# Scripts usages

Scripts in this bin directory can be executed
for Windows from _/bin/win_ or Mac/Linux from _/bin/mac_

---

## test

Runs an integration test on Assimbly gateway. It does this by deploying the configuration file
into the deploy directory of Assimbly (${user.home}/.assimbly/deploy).

Note: Some integration tests need other software besides Assimbly Gateway. For example MongoDB for the globalvariables module or SMB for the SMB module.
Note 2: For now only bash script (Windows users need to run it from GIT Bash)

### Usage:

To run an integration test:

```integrationtest modulename testdir delay```

- Testdir: The name of the test directory that contains the configuration file. The directory is placed in {componentname}/{testname}
- Delay (optional): How long the script waits in seconds until the test runs. It waits until the configuration is deployed (default=10s)

**example**

```test docconverter/camel2```

**example with delay set**

```test docconverter/camel2 15s```


---

## lazygit

Add all files to the staging area, commit the files and push it to origin (GitHub). Shortcut for:

```
git add -A
git commit -m "<commit message"
git push
```

### Usage:

```lazygit "my message"```