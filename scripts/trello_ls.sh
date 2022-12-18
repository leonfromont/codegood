#!/bin/bash
ApiUrl="https://api.trello.com/1/lists/${TrelloListId}/cards?key=${TrelloKey}&token=${TrelloToken}"
curl -s --request GET --url $ApiUrl | jq '.[].name' | tr -d '"'