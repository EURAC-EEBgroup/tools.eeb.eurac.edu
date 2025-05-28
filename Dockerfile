FROM python:3.10 AS builder
WORKDIR /app/
COPY . .
RUN pip install -r requirements.txt
RUN mkdocs build

FROM httpd:2.4
COPY --from=builder /app/site/ /usr/local/apache2/htdocs/