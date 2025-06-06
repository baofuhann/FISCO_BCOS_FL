#!/bin/bash
SHELL_FOLDER=$(cd $(dirname $0);pwd)

LOG_ERROR() {
    content=${1}
    echo -e "\033[31m[ERROR] ${content}\033[0m"
}

LOG_INFO() {
    content=${1}
    echo -e "\033[32m[INFO] ${content}\033[0m"
}

default_version=2.7.2
download_version=2.7.2
set -e
sed_cmd="sed -i"
solc_suffix=""
supported_solc_versions=(0.4 0.5 0.6)
package_name="console.tar.gz"
sm_crypto=false

if [ "$(uname)" == "Darwin" ];then
    sed_cmd="sed -i .bkp"
fi
while getopts "v:V:f" option;do
    case $option in
    v) solc_suffix="${OPTARG//[vV]/}"
        if ! echo "${supported_solc_versions[*]}" | grep -i "${solc_suffix}" &>/dev/null; then
            LOG_WARN "${solc_suffix} is not supported. Please set one of ${supported_solc_versions[*]}"
            exit 1;
        fi
        package_name="console-${solc_suffix}.tar.gz"
        if [ "${solc_suffix}" == "0.4" ]; then package_name="console.tar.gz";fi
    ;;
    V) download_version="$OPTARG";;
    f) config="true";;
    esac
done

sm_crypto=$(cat "${SHELL_FOLDER}"/node*/config.ini | grep sm_crypto= | cut -d = -f 2 | head -n 1)
download_link=https://github.com/FISCO-BCOS/console/releases/download/v${download_version}/${package_name}
cos_download_link=https://osp-1257653870.cos.ap-guangzhou.myqcloud.com/FISCO-BCOS/console/releases/v${download_version}/${package_name}
echo "Downloading console ${download_version} from ${download_link}"
if [ $(curl -IL -o /dev/null -s -w %{http_code}  ${cos_download_link}) == 200 ];then
    curl -#LO ${download_link} --speed-time 30 --speed-limit 102400 -m 450 || {
        echo -e "\033[32m Download speed is too low, try ${cos_download_link} \033[0m"
        curl -#LO ${cos_download_link}
    }
else
    curl -#LO ${download_link}
fi
tar -zxf ${package_name} && cd console && chmod +x *.sh

    if [[ -n "${config}" ]];then
	    cp -r ${SHELL_FOLDER}/sdk/* conf/
    fi
    channel_listen_port=$(cat "${SHELL_FOLDER}"/node*/config.ini | grep channel_listen_port | cut -d = -f 2 | head -n 1)
    channel_listen_ip=$(cat "${SHELL_FOLDER}"/node*/config.ini | grep channel_listen_ip | cut -d = -f 2 | head -n 1)
    if [ "${version:0:1}" == "1" ];then
        cp conf/applicationContext-sample.xml conf/applicationContext.xml
        ${sed_cmd} "s/127.0.0.1:20200/127.0.0.1:${channel_listen_port}/" conf/applicationContext.xml
    else
        cp conf/config-example.toml conf/config.toml
        ${sed_cmd} "s/127.0.0.1:20200/127.0.0.1:${channel_listen_port}/" conf/config.toml
    fi
    echo -e "\033[32m console configuration completed successfully. \033[0m"
