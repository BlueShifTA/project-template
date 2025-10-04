# Frontend

Next.js frontend for the project template application.

## Features

- Next.js 15 with React 18
- TypeScript support
- API proxy configuration to backend
- TailwindCSS for styling
- Type-safe API client generation with orval

## Development

```bash
# Install dependencies
npm install

# Run development server
npm run dev
```

Visit http://localhost:3000

## API Integration

The frontend is configured to proxy API requests to the backend:
- Frontend: http://localhost:3000
- Backend API: http://localhost:8000
- Proxied API calls: http://localhost:3000/api/* → http://localhost:8000/api/*

## OpenAPI Code Generation

OpenAPI client code can be generated from the backend API:

```bash
# Generate TypeScript client from OpenAPI spec
npm run api
```

This will:
1. Download the OpenAPI spec from the running backend
2. Generate TypeScript types and API client using orval
