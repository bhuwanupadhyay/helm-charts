FROM python:3.7
ARG WORKDIR=/pgync
RUN mkdir $WORKDIR && mkdir $WORKDIR/configs
WORKDIR $WORKDIR
RUN pip install pgsync
COPY ./wait-for-it.sh wait-for-it.sh
COPY ./runserver.sh runserver.sh
RUN chmod +x wait-for-it.sh
RUN chmod +x runserver.sh
CMD ["./runserver.sh"]
