# Workflow (GitHub actions) notification in VK

### Developed on the basis [alphamusic/VK-Notifications](https://github.com/alphamusic/VK-Notifications)

## Inputs
### `access_token`
(***required***)
Community access_token with scope `messages`

### `peer_ids`
(***required***)
List of id chats/users (example: `2000000001,162667568`)

### `text`
(***optional***)
Message to send, by default it looks like this:
```text
🔔 Workflow 'Deployment' completed.

Repository: z3nnik/test
Branch: master

https://github.com/z3nnik/test/actions/runs/2491678480
```

### `api_version`
(***optional***)
VK API version, by default `5.134`

## Examples
```yaml
uses: z3nnik/vk-workflow-notifications@v1
  with:
    access_token: ${{ secrets.GROUP_TOKEN }}
    peer_ids: 2000000002
```
```yaml
uses: z3nnik/vk-workflow-notifications@v1
  with:
    access_token: ${{ secrets.GROUP_TOKEN }}
    peer_ids: 2000000001,162667568
    text: CI/CD '${{ github.workflow }} %23${{ github.run_number }}' completed
    api_version: 5.137
```

## Bugs & Feature Requests
[GitHub issues](https://github.com/z3nnik/z3nnik/vk-workflow-notifications/issues) or VK (https://vk.com/zn)