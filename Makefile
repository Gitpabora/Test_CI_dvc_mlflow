setup:
	python3 -m venv ~/.Test_CI_dvc_mlflow
    #source ~/.Test_CI_dvc_mlflow/bin/activate

install:
	pip install --upgrade pip &&\
	  pip install -r requirements.txt
