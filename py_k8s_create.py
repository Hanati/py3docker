from kubernetes import client, config, utils

config.load_kube_config()
k8s_client = client.ApiClient()
yaml_file = 'test.yaml'
utils.create_from_yaml(k8s_client, yaml_file)
