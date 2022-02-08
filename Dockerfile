FROM tensorflow/serving

WORKDIR /model_server
COPY . /model_server
EXPOSE 8605

ENTRYPOINT ["tensorflow_model_server", "--port=8500", "--rest_api_port=8605", "--model_name=food_detector", "--model_base_path=/model_server/models/food_detector"]

