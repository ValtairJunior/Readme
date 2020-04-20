from flask import Flask
from flask_restful import Api, request, Resource

app = Flask(__name__)
api = Api(app)

message = []

class Message(Resource):
    
    def get(self):
        return message

    def post(self):
        json_data = request.get_json()
        message.append(json_data)
        return {'message': "successful"}

api.add_resource(Message, '/message')

if __name__ == '__main__':
    app.run(debug=True)