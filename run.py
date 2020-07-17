import os
from flask import Flask

app = Flask("twiiter-interaction-circle")

@app.route('/<username>')
def run(username):
    os.system('yarn build %s' % username)
    return 'Done!\n'

if __name__ == '__main__':
    app.run(debug=True, host='localhost')
