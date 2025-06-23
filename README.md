# Multi-Agent Framework

## 1. Project Purpose

This project contains a dynamic and configurable multi-agent development framework. Its primary goal is to provide a resilient and standardized system for orchestrating LLM-based development tasks.

The core philosophy is to mitigate common LLM failure modes (such as context drift and regression errors) by using a robust hierarchy of specialized agents whose behavior is dictated by explicit configuration files, rather than complex, fragile prompts.

## 2. Project History

This framework was originally developed as an integral part of the `roo_code_LLM_universe` project, which aimed to standardize all software development practices. However, as the framework's complexity and importance grew, it became clear that it was a distinct, standalone tool.

During **Session 15** (June 2025), a strategic decision was made to perform a "Project Mitosis." This framework was formally separated into its own project to allow for independent development, versioning, and deployment as a reusable tool for any future project.

## 3. Current Status

**Status:** Active - Initial Setup

This project has just been formally created. The core files have been migrated into this dedicated directory (`/01_frameworks/multi_agent_framework/`).

The immediate next steps are:
- To initialize a dedicated Git repository for version control.
- To continue the development and refinement of the agent definitions and workflows.

## 4. Key Files

- **`agent_workflows.json`**: The heart of the framework's configuration. This file defines the operational logic, active agents, rules of engagement, and escalation paths for different workflows.
- **`roomodes.md`**: Contains the detailed definitions for each specialist agent. This includes their role, persona, instructions, and constraints (e.g., `Dispatcher`, `coder-junior`, `coder-senior`).
- **`custom_agent_framework.md`**: High-level architectural and philosophical documentation outlining the core principles of the framework.
- **`logs/llm_assisted_development_log.md`**: The dedicated development log for this project, tracking all LLM-assisted changes and decisions from this point forward.