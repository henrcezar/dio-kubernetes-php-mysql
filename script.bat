echo "Criando as imagens....."

docker build -t hencezar/projeto-backend:1.0 backend/.
docker build -t hencezar/projeto-database:1.0 database/.

echo "Realizando push das imagens..."

docker push henrcezar/projeto-backend:1.0
docker push hencezar/projeto-database:1.0

echo "Criando serviços no cluster kubernetes..."

kubectl apply -f ./services.yml

echo "Criando os deployments..."

kubectl apply -f ./deployment.yml

