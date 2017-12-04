FROM mongo

CMD tar zxvf primer-dataset.tar.gz
COPY primer-dataset.json /init.json
#CMD mongoimport --host mongodb --db mydb --collection mydummycollection --type json --file /init.json --jsonArray
CMD mongoimport --host mongodb --db test --collection restaurants --drop --type json --file /init.json

