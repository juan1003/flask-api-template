# Flask API Template
## This is Flask API Template.

Requirements to run this:
- Python 3 or later
- virtualenv
- Docker (optional)
- Git
- GH CLI (optional)

The script to run this are the following

With Docker

```sh
gh repo clone juan1003/flask-api-template
cd flask-api-template
docker build -t api-image:v1 .
docker run -d -v .:/app --name api -p 80:5000 api-image
```

Without Docker

```sh
gh repo clone juan1003/flask-api-template
cd flask-api-template
source venv/bin/activate
pip install -r requirements.txt
flask --app app run --debug
```

That's it!

Happy Hacking!
