echo "Building images..."
username=$1

prefix=''
if [ ! -z ${username} ]; then
    prefix="${username}/"
fi

app_title="k8s-lab1"
version="v1"

backend_name="${prefix}${app_title}-backend:${version}"
db_name="${prefix}${app_title}-database:${version}"

docker image build -t "${backend_name}" backend/.
docker image build -t "${db_name}" database/.
echo "Image builds finished."

echo "Pushing images"
docker image push -q "${backend_name}"
docker image push -q "${db_name}"
echo "Images at docker hub."

echo "Creating volumes..."

kubectl apply -f ./infra/persistence.yml

echo "Creating services..."

kubectl apply -f ./infra/services.yml

echo "Creating deployments..."

kubectl apply -f ./infra/deployment.yml

echo "Application started."