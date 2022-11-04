# flask-sleep-service
A windows service that sends computer to sleep on an external REST request
## Intetn
Send a computer running Windows to sleep remotely
## How to cook
Make sure you have python installed for all the users. The application also uses
Nssm tool to register the python application as a windows service. Plese download the tool at https://nssm.cc/download. Folow te steps below to install the service:

1. Open `install_the_service.bat` for editing and amend `path` - the path to the source code.
3. Open nssm\win64 folder and launch console as an administrator there
4. Execute `.\PATH_TO_THE_SCRIPT\install_the_service.bat`
5. Open Services windows application, find your service and start it
6. Execute the code below from any device in the same network to send the computer to sleep mode:
```bash
curl --location --request POST 'http://YOUR_IP_ADDRESS:8786' \
--header 'Content-Type: application/json' \
--data-raw '{"command": "sleep"}'
```
