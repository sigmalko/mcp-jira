docker pull ghcr.io/sooperset/mcp-atlassian:latest
docker run -d --name mcp-jira --restart unless-stopped -p 127.0.0.1:9000:9000 --env-file .env ghcr.io/sooperset/mcp-atlassian:latest --transport streamable-http --stateless --port 9000
