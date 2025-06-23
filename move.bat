REM === Navigate to the project directory ===
cd d:\mca_universe\01_frameworks\multi_agent_framework

REM === Create new source and documentation directories ===
mkdir src
mkdir docs

REM === Move the development files into their new locations ===
move custom_agent_framework.md docs\
move agent_workflows.json src\

REM === Create the runtime config from the source and rename it to be hidden ===
copy src\agent_workflows.json .
ren agent_workflows.json .agent_workflows