## Exercise 1: System Boot Sequence

### Scenario

At **Project Alfa**, the system’s boot terminal is silent. Your mission is to rebuild the initialization sequence so that every startup emits a proper status message.

### Initial Material

```
bash-notes-and-practices/chapter-1/Exercise-1/
├── terminal/
│   └── boot-sequence.sh
```

Contents of `boot-sequence.sh`:

```bash
#!/bin/bash
# The terminal should confirm system readiness here.
# Currently, the startup message is missing.
```

### Tasks

1. Insert a simple output line that confirms the system booted successfully.
2. Ensure the script can be executed directly (`./boot-sequence.sh`) without errors.
3. Test both interactive and non-interactive runs and verify identical output.

---

## Exercise 2: Dynamic Greeting Protocol

### Scenario

Within **Project Beta**, each operator should receive a personal greeting when accessing control panels. The prototype script below prints static text instead of a personalized message.

### Initial Material

```
bash-notes-and-practices/chapter-1/Exercise-2/
├── access/
│   └── greeting.sh
```

Contents of `greeting.sh`:

```bash
#!/usr/bin/env bash
# Prototype greeter
# Expected: prints “Hello, <operator>!”
# Current: prints nothing useful

# TODO: introduce a variable to hold the target name
# TODO: optionally accept a name as an argument
# TODO: print the greeting message
```

### Tasks

1. Store a name in a variable and display it as part of a greeting.
2. Add optional support for a name passed from the command line.
3. Test both modes (no argument and with an argument).

---

## Exercise 3: Secure Access Terminal

### Scenario

At **Laboratory Sigma**, every experiment operator must identify themselves before system access. The terminal must request input, then confirm authorization with a personalized message.

### Initial Material

```
bash-notes-and-practices/chapter-1/Exercise-3/
├── security/
│   └── access-terminal.sh
```

Contents of `access-terminal.sh`:

```bash
#!/usr/bin/env bash
# This script should interact with the operator.
# It currently does not prompt or respond.

# TODO:
# 1. Ask the user to enter their name.
# 2. Read and store that input.
# 3. Confirm identity by printing “Access granted to <name>”.
```

### Tasks

1. Implement input capture and confirmation.
2. Use the stored value to display a validation message.
3. Add a short phrase derived from the input (e.g., append “_logged” or “_verified”).

---

## Exercise 4: Transmission Signal Integrity

### Scenario

In **Station Delta**, communication packets are corrupted by unintended variable expansion. Three transmission scripts simulate different quoting strategies — only one preserves integrity.

### Initial Material

```
bash-notes-and-practices/chapter-1/Exercise-4/
├── transmission/
│   ├── signal-expand.sh
│   ├── signal-literal.sh
│   └── signal-escaped.sh
```

Contents of `signal-expand.sh`:

```bash
#!/usr/bin/env bash
signal="ALPHA"
# Expected output: “Transmission: ALPHA”
# Currently functional
echo "Transmission: $signal"
```

Contents of `signal-literal.sh`:

```bash
#!/usr/bin/env bash
signal="BETA"
# Expected output: “Transmission: $signal”
# Problem: the variable expands unexpectedly
echo 'Transmission: $signal'
```

Contents of `signal-escaped.sh`:

```bash
#!/usr/bin/env bash
signal="GAMMA"
# Expected output: “Transmission: $signal”
# Problem: escaping symbols incorrectly
echo "Transmission: \$signal"
```

### Tasks

1. Analyze how each quoting method behaves.
2. Adjust or document which strategy produces literal output and which expands variables.
3. Compare the results to ensure understanding of quoting and escaping.

---

## Exercise 5: Debugging the Deployment Sequence

### Scenario

At **Control Center Omega**, a deployment manager script intermittently fails. Engineers suspect logic errors and missing permissions. You must run diagnostics, trace execution, and stabilize the code.

### Initial Material

```
bash-notes-and-practices/chapter-1/Exercise-5/
├── deployment/
│   └── deploy-sequence.sh
└── logs/
    └── trace.log
```

Contents of `deploy-sequence.sh`:

```bash
#!/bin/bash
# Deployment prototype with hidden issues

release=false
optimize=false

while (( $# > 1 )); do
  case $1 in
    --release) release=$2 ;;
    --optimize) optimize=$2 ;;
  esac
  shift 2
done

$release && echo "Releasing build..."
$optimize && echo "Optimizing build..."
```

### Tasks

1. Enable execution tracing for this script and capture the trace output to `logs/trace.log`.
2. Inspect the trace and identify any incorrect conditional behavior or argument handling.
3. Correct any syntax or logic issues so that both parameters (`--release`, `--optimize`) work properly.
4. Confirm the script executes successfully when permissions and arguments are correct.

---

### Recommendations and Hints

* Always verify executable permissions before testing.
* Run scripts in diagnostic mode to observe variable values and flow.
* Experiment with quoting and escaping to control variable expansion.
* Use consistent relative paths (`./`) to avoid “file not found” errors.
* When debugging, isolate each command’s output and confirm the execution sequence line by line.
