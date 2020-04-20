all:

flask_run:
	export FLASK_APP=app.py ; export FLASK_ENV=development ; flask run --host=0.0.0.0

post_message:
	curl -X post localhost:5000/message -d '{"message":"essa e uma mensagem de teste"}' -H 'content-type:application/json'

get_message:
	curl http://localhost:5000/message

put_message:
	curl http://localhost:5000/id -d "data=Primeira mensagem" -X PUT
