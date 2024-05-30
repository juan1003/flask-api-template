from flask import Flask 

app = Flask("__name__")

inventory = {"basket": [[1, "orange", 0.25, 10],[2, "apple", 0.55, 5],[3, "blueberries", 0.10, 23]]}

@app.route("/")
def index():
    template = f'''
        <h1>Hello world</h1>

        <h2>This is the inventory for today</h2>

        {inventory}
    '''
    return template

