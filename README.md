# mcp-jira

## Uruchomienie lokalne

1. Run `start.bat` or `start.sh`.
2. Check `http://127.0.0.1:9000/mcp`
3. Open ChatGPT Desktop. Goto 'Settings' -> 'Plugins' -> 'MCP Servers' -> 'Add Server MCP'.
4. Configure MCP Server with type 'Streamable HTTP' and URL `http://127.0.0.1:9000/mcp`

## Uruchamianie na serwerze VPS

```bash
docker run -d --name mcp-jira --restart unless-stopped -p 0.0.0.0:9000:9000 --env-file .env ghcr.io/sooperset/mcp-atlassian:latest --transport streamable-http --stateless --port 9000
```

Parametr `0.0.0.0:9000:9000` wiąże port kontenera ze wszystkimi interfejsami sieciowymi VPS, dzięki czemu można połączyć się z serwerem z zewnątrz (o ile firewall i reguły sieciowe VPS dopuszczają ruch na porcie 9000).
