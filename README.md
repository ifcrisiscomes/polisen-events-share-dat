docker build -t polisen-events-share-dat .

docker run -d  -p 3282:3282 -v /FOLDERTOSHARE:/data -v $PWD/secrets:/secrets --name polisen-events-share-dat-instance polisen-events-share-dat

To access docker:
docker exec -it polisen-events-share-dat-instance bash