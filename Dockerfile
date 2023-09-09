FROM jupyter/tensorflow-notebook

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

CMD ["jupyter", "notebook", "--ip=0.0.0.0","--port=8888","--no-browser", "--allow-root"]