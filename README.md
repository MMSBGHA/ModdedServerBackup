## WINDOWS VERSION

# NOOB
If you don't have a github
usage: ```./backupToGithub.bat BRANCH-NAME NOOB```
where ```BRANCH-NAME``` is the branch name you are backing up to. Ask to verify that the branch should be backup'ed to.

# SETUP
1. Clone the repo
2. add a call to ```backupToGithub``` in server startup


## TODO

- [ ] Debate on using a 3rd party account to commit? (If we use our own github accts then we will be able to tell who was running the server at that date/time) Or we can search the user's environment to find the username on the PC and include that.
- [ ] Upload Initial Copy of Server Directory
- [ ] Add a call to ```backupToGithub``` in server startup
- [ ] Convert Date Timestamp to EST 12hr time
- [ ] (Maybe?) If no one joined the server or was on it in the last hour do not execute the world backup (I think we can do this because if u launch the server with GUI there is a way that it gets who is currently logged onto the server. Might require a small java app)
