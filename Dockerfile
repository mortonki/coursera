FROM jupyter/minimal-notebook

COPY . /home/jovyan/work

# Install Python packages
RUN pip install --no-cache-dir scikit-learn pandas matplotlib seaborn scipy piplite statsmodels js

# Expose Jupyter to OpenShift’s default port
EXPOSE 8080

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root"]
