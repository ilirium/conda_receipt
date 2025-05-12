FILE_NAME := "environment"
ENV_NAME := "hpc"

create_venv:
	mamba env create -f "$(FILE_NAME)".yml

remove_venv:
	mamba env remove -n "$(ENV_NAME)"

clean_folder:
	rm -rf ~/Dev/mambaforge/envs/"$(ENV_NAME)"/

export_venv:
	mamba env export -n "$(ENV_NAME)" > "$(FILE_NAME)"___result.yml
	pip freeze > "$(FILE_NAME)"___result.txt
