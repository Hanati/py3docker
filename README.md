# Run docker jobs in kubernetes with python

### Modify the `test.py` and `requirements.txt`
1) `test.py` will be executed in the kubernetes cluster.
2) create the environment to test the `test.py`
```
python3 -m venv myenv/py3kub_exec
source myenv/py3kub_exec/bin/activate
pip install requirements.txt
python test.py
```

### Build the image
1) Modify `hub_namepace` and `image_name` upon needs, need to have docker hub access, if need to push the image.
```
make build
```
2) Modify the `image` in the `test.yaml` if the namespace and image_name were changed.

### Exec the jobs in kubernetes
```
make runjob
```


