from flask import Flask, request
import os
app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'GET':
        return 'The service is running!!!'

    if request.method == 'POST':
        command = request.get_json().get('command', '')
        if command == 'sleep':
            try:
                os.system('rundll32.exe powrprof.dll, SetSuspendState Sleep')
            except:
                pass
            return
        else:
            return {"error_msg":"unknown command", "command":command}


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8786, debug=False)
