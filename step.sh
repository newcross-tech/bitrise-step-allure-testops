#!/bin/bash
set -ex

export ALLURE_ENDPOINT=${allure_endpoint}
export ALLURE_TOKEN=${allure_token}
export ALLURE_PROJECT_ID=${allure_project_id}

wget https://github.com/allure-framework/allurectl/releases/download/${allurectl_version}/allurectl_${os_arch} -O ./allurectl
chmod +x ./allurectl
./allurectl upload ${allure_results_dir}
