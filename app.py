# -*- coding: utf-8 -*-

from flask import Flask, request
app = Flask(__name__)

@app.route('/add', methods=['POST'])
def add():
    result = int(request.json['x']) + int(request.json['y'])
    return '%d' % result

@app.route('/health', methods=['GET'])
def health():
    return 'ok', 200