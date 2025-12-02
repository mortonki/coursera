FROM jupyter/minimal-notebook

COPY . /home/jovyan/work

# Expose Jupyter to OpenShift’s default port
EXPOSE 8080

CMD ["sh", "-c", "jupyter lab --ip=0.0.0.0 --port=8080 --no-browser --allow-root"]
