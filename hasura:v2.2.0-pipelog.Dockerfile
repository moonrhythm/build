FROM golang:1.17.6

WORKDIR /workspace
RUN git clone -n https://github.com/moonrhythm/pipelog && \
	cd pipelog && \
	git checkout 99d745aa7d8224300e661bf9b13a21fd474b1991
RUN cd pipelog && go mod download
RUN cd pipelog && go build -o pipelog .

FROM hasura/graphql-engine:v2.2.0

COPY --from=0 /workspace/pipelog/pipelog /bin/pipelog
RUN echo "graphql-engine serve 2>&1 | pipelog" > /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh

CMD ["sh", "-c", "/bin/entrypoint.sh"]
