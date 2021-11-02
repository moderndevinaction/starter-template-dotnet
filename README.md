# .NET Starter Template

A starter template used for creating .NET web projects.

## Setup

```bash

az login

SUB_ID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
RG_NAME=my-resource-group-name

az ad sp create-for-rbac \
    --name "starter-template-dotnet-ghaction" \
    --role contributor \
    --scopes /subscriptions/$SUB_ID/resourceGroups/$RG_NAME \
    --sdk-auth
    
```
