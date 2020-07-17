import os
from flask import Flask

app = Flask("twiiter-interaction-circle")

@app.route('/')
def run():
    os.system('yarn build')
    return 'Done!\n'

if __name__ == '__main__':
    app.run(debug=True, host='localhost')
