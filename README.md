# fb-sitequery
A simple FiveM/QBCore Script to query your database in order to show which players and characters are online for your webiste!

If you're using a 3rd party pause menu you'll most likely have to add the following to your client quit/logout event for this to work properly.
```
TriggerEvent('fb-sitequery:MakeSureThatShitCloses', source)
```