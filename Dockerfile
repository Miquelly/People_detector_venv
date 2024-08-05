FROM python:3.10.12
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
COPY . /is_project_docker
WORKDIR /is_project_docker

# Instalando as dependências dentro do ambiente virtual
RUN pip install --upgrade pip && \
    pip install .

CMD ["python", "main.py"]