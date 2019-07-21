FROM python:2.7
LABEL maintaner="Peng Xiao xiaoquwl@gmail.com"
COPY . /app/
WORKDIR /app
RUN pip install flask redis && chmod +x app.py　
EXPOSE 5000
CMD [ "python", "app.py" ]
