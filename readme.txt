docker run -v ~/.ssh:/root/.ssh --add-host dckr-src-1:192.168.30.11 --add-host dckr-trgt-1:192.168.40.11  -d docker-with-args


docker run -d docker-with-args

docker run -v ~/.ssh:/root/.ssh -d docker-with-args

docker run -v ~/.ssh:/root/.ssh --add-host dckr-src-1:192.168.30.11 --add-host dckr-trgt-1:192.168.40.11  -d docker-with-args

docker run -d  -e slp=3600 docker-with-args



ansible-playbook -i myhosts copyToRemote.yml

ansible-playbook -i myhosts copyToLocal.yml

docker build -t docker-with-args .

docker rmi docker-with-args








cp /Users/kadirsahan/workload/spboot/demo/target/demo-0.0.1-SNAPSHOT.jar /Users/kadirsahan/workload/docker-with-args-ansible/source-folder/

vagrant upload demo-0.0.1-SNAPSHOT.jar

vagrant ssh dckr-m-1

cp demo-0.0.1-SNAPSHOT.jar /srcjar/





docker cp 09f7e102985c:/root/.ssh/id_rsa .cert/id_rsa
docker cp 09f7e102985c:/root/.ssh/id_rsa .cert/id_rsa.pub
docker cp adac1fbb050d:/root/.ssh/id_rsa .cert/known_hosts

docker cp  .cert/id_rsa adac1fbb050d:/root/.ssh/id_rsa
docker cp  .cert/id_rsa.pub adac1fbb050d:/root/.ssh/id_rsa.pub
docker cp  .cert/known_hosts adac1fbb050d:/root/.ssh/known_hosts


docker commit e3ce7b5acdbc  docker-with-args:v4

docker run -d  -e slp=10 docker-with-args:v4
