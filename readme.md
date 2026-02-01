
Typical Workflow:
- Developer commits code & DVC files to GitHub
- Airflow DAG is triggered (scheduled or event-based)
- Airflow executes: dvc pull to fetch latest data from remote storage
- Airflow runs training task, logs metrics/params to MLflow
- MLflow stores model artifacts to remote storage
- Airflow executes: dvc add model.pkl && dvc push to version the model
- MLflow registers model version for deployment
- Results tracked in GitHub via commits and MLflow UI for experiments


run `export AIRFLOW_HOME=~/af-demo`
airflow standalone
docker build -t af-demo:data-ingest .
export AWS_ACCESS_KEY_ID="asdff"                                               
export AWS_SECRET_ACCESS_KEY="xx"
expoert AWS_DEFAULT_REGION=us-east-2
https://www.astronomer.io/docs/learn/airflow-params
kubectl create configmap language --from-literal=LANGUAGE=English
kubectl get configmap
kubectl create secret generic apikey --from-literal=API_KEY=123–456
kubectl get secret
kubectl apply -f k8/configmap-language.yaml
kubectl apply -f k8/secret-apikey.yaml
