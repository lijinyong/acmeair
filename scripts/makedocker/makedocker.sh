CUR_PATH=$(cd "$(dirname "$0")"; pwd)
ROOT_PATH="${CUR_PATH}/../../"
cd "${ROOT_PATH}"
mvn clean  install -DskipTests  -Phuaweicloud
cd "${CUR_PATH}"
cp ./customer/Dockerfile  ${ROOT_PATH}/acmeair-customer-service/target/acmeair/
cp ./booking/Dockerfile  ${ROOT_PATH}/acmeair-booking-service/target/acmeair/
cp ./website/Dockerfile   ${ROOT_PATH}/acmeair-website/target/
cd ${ROOT_PATH}/acmeair-customer-service/target/acmeair/
docker build -t acmeair-customer-service:3.0.0-SNAPSHOT  . 
cd  ${ROOT_PATH}/acmeair-booking-service/target/acmeair/
docker build -t acmeair-booking-service:3.0.0-SNAPSHOT .
cd ${ROOT_PATH}/acmeair-website/target/
docker build -t acmeair-website:3.0.0-SNAPSHOT  .
