# StudioAgent-Cinema

An automated system for generating cinema video scripts and thumbnails using AI agents. This project leverages CrewAI to coordinate multiple specialized agents that research, write, and create visual content for cinema-themed YouTube videos.

## Project Overview

StudioAgent-Cinema is a multi-agent AI system that automates the creation of video scripts and thumbnails for cinema content. The system uses three specialized agents working in coordination: a Script Writer who researches and creates compelling scripts, a Thumbnail Creator who generates visually appealing thumbnails using DALL-E, and a Reviewer who ensures quality and combines all elements into a final deliverable.

## Features

- **Automated Script Generation**: Researches cinema topics and creates structured scripts with introduction, main content, and conclusion
- **AI-Powered Thumbnail Creation**: Generates three unique thumbnail options using DALL-E based on script content
- **Quality Review Process**: Automated review and refinement of scripts and visual content
- **Hierarchical Agent Coordination**: Uses CrewAI's hierarchical process for efficient agent management
- **Web Research Integration**: DuckDuckGo search integration for up-to-date cinema information

## System Architecture

```mermaid
graph TD
    A[User Input Query] --> B[Script Writer Agent]
    B --> C[Web Research DuckDuckGo]
    C --> D[Script Generation]
    D --> E[Thumbnail Creator Agent]
    E --> F[DALL-E Image Generation]
    F --> G[3 Thumbnail Options]
    D --> H[Reviewer Agent]
    G --> H
    H --> I[Script Review & Refinement]
    I --> J[Final Combined Output]
    J --> K[Markdown Script + Thumbnails]
    
    style A fill:#e1f5fe
    style K fill:#c8e6c9
    style B fill:#fff3e0
    style E fill:#fff3e0
    style H fill:#fff3e0
```

## Installation

### Prerequisites

- Python 3.12
- OpenAI API key

### Setup

1. Clone the repository:
```bash
git clone <repository-url>
cd StudioAgent-Cinema
```

2. Set up the virtual environment:
```bash
make setup
```

3. Activate the environment and install dependencies:
```bash
make activate
```

4. Set up your environment variables:
Create a `.env` file in the project root with:
```
OPENAI_API_KEY=your_openai_api_key_here
```

## Usage

### Basic Usage

Run the system with a cinema-related topic:

```python
from crewai import Crew, Process

# The system is ready to use with the predefined crew
result = crew.kickoff(inputs={"query": "Best movies of 2024"})
```

### Available Commands

- `make setup` - Initialize the development environment
- `make activate` - Activate virtual environment and install dependencies

## Agent Architecture

### Script Writer Agent
- **Role**: Researches and writes cinema scripts
- **Tools**: DuckDuckGo search
- **Output**: Structured markdown script with introduction, main content, and conclusion

### Thumbnail Creator Agent
- **Role**: Creates visually appealing thumbnails
- **Tools**: DALL-E image generation
- **Output**: Three unique 1920x1080 thumbnail images with catchy text

### Reviewer Agent
- **Role**: Quality control and content integration
- **Process**: Reviews script, requests improvements if needed, combines final script with thumbnails
- **Output**: Complete markdown document with script and embedded thumbnails

## Output Format

The system generates a comprehensive markdown document containing:
- Well-structured cinema script
- Three thumbnail options embedded as images
- Professional formatting ready for content creation

## Dependencies

- `crewai` - Multi-agent orchestration framework
- `crewai-tools` - AI tools integration
- `langchain-openai` - OpenAI LLM integration
- `duckduckgo-search` - Web search functionality
- `langchain-community` - Community tools
- `python-dotenv` - Environment variable management

## Examples

### Sample Input
```python
inputs = {"query": "Oscar nominated films 2024"}
```

### Expected Output
A comprehensive markdown document including:
- Detailed script about Oscar nominated films
- Three professionally designed thumbnails
- Coherent narrative structure suitable for video production