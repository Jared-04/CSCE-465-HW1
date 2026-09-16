Workflow diagram can be found in hw1/other/workflow.png

The diagram illustrates assets, threats, and boundaries associated with the workflow of the agentic webpage injection attack.

## Assets
- Session Data: private user information that may have been shared to the agent during the session
- Agent Context: prompt history and memory that determines the agent’s behavior
- API Credentials: keys and tokens stored in the environment for access control
- File System: files stored within the file system of the virtual machine

## Threats
- Prompt Injection: malicious instructions hidden in plain text (such as a webpage)
    - Filtering the prompt before supplying it to the LLM
- Unauthorized Tool Use: the agent attempting privileged commands
    - Give agent minimum necessary privileges
- Data Exfiltration: exporting sensitive data to an attacker’s server
    - Domain whitelisting and strict network traffic protocols
- Sensitive File Access: the agent accessing keys, tokens, or other private information
    - Use strict execution approval policies
- Context Corruption: modifying the agent’s behavior and objectives
    - Prioritize inputs coming directly from a user
- Privilege Escalation: enabling a low-level user to execute privileged instructions
    - Ensure all actions originating from a user hold the same restrictions

## Boundaries
- HTTP: web traffic coming in from a website or service
- Gateway Network: connection to the LLM (when using an external model)
- Execution Policy: the policy dictating which actions require approval
- VM OS: hypervisor layer between an agent’s VM and the host machine

## Principles of Security
- Confidentiality: Private keys, files, and personal session information should stay private from an attacker
- Integrity: Session context and agent behavior should remain consistent with user inputs
- Availability: User should not lose access to session gateway or have unintended restrictions added
