# Open WebUI

## Project Overview

Open WebUI is a self-hosted AI platform designed to operate entirely offline. It's an extensible, feature-rich, and user-friendly interface for various LLM runners like Ollama and OpenAI-compatible APIs. The project is built with a SvelteKit frontend and a Python FastAPI backend.

## Building and Running

The application is designed to be run with Docker and Docker Compose.

### Prerequisites

- Docker
- Docker Compose

### Running the Application

1.  **Start the services:**

    ```bash
    docker-compose up -d
    ```

2.  **Access the application:**

    Open your web browser and navigate to `http://localhost:3000`.

### Development

The `package.json` file contains scripts for development:

- `dev`: Starts the SvelteKit development server.
- `build`: Builds the SvelteKit application for production.
- `lint`: Lints the frontend and backend code.
- `format`: Formats the code with Prettier and Black.

## Development Conventions

- **Frontend:** The frontend is a SvelteKit application located in the `src` directory. It uses TypeScript, Tailwind CSS, and various other libraries.
- **Backend:** The backend is a Python FastAPI application located in the `backend` directory. It uses SQLAlchemy for database interactions and various other libraries for handling AI models and APIs.
- **Linting:** ESLint is used for the frontend, and Pylint for the backend.
- **Formatting:** Prettier is used for the frontend, and Black for the backend.
- **Testing:** Cypress is used for end-to-end testing, and Vitest for unit testing the frontend.
