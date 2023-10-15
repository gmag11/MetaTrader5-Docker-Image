# MetaTrader5 Docker Image

This project provides a Docker image for running MetaTrader5 with remote access via VNC, based on the [KasmVNC](https://github.com/kasmtech/KasmVNC) project and [KasmVNC Base Images from LinuxServer](https://github.com/linuxserver/docker-baseimage-kasmvnc).

## Features

- Run MetaTrader5 in an isolated environment.
- Remote access to MetaTrader5 interface via an integrated VNC client accessible through a web browser.
- Built on the reliable and secure KasmVNC project.

## Requirements

- Docker installed on your machine.

## Usage

1. Clone this repository:
```bash
git clone https://github.com/gmag11/MetaTrader5-Docker-Image
cd MetaTrader5-Docker-Image
```

2. Build the Docker image:
```bash
docker build -t mt5 .
```

3. Run the Docker image:
```bash
docker run -d -p 3000:3000 -v config:/config mt5
```

Now you can access MetaTrader5 via a web browser at localhost:3000.

## Configuration
The port configuration can be adjusted as per the instructions in the KasmVNC repository. Any additional configuration or environment variables needed to customize MetaTrader5 and KasmVNC running settings should be described here.

## Contributions
Feel free to contribute to this project. All contributions are welcome. Open an issue or create a pull request.

## License

This project is licensed under the terms of the [MIT license](https://opensource.org/license/mit/). 

The **KasmVNC** project is licensed under the [GNU General Public License v2.0 (GPLv2)](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html). You can check the license details of KasmVNC [here](https://github.com/kasmtech/KasmVNC/blob/master/LICENSE.TXT).

**KasmVNC Base Images from LinuxServer** is licensed unther the GNU General Public License v3.0 (GPLv3). License is available [here](https://github.com/linuxserver/docker-baseimage-kasmvnc/blob/master/LICENSE)

Please ensure to comply with the terms and conditions of the licenses while using or modifying this project.

# Acknowledgments
Acknowledgments to the [KasmVNC](https://github.com/kasmtech/KasmVNC) project, [KasmVNC Base Images from LinuxServer](https://github.com/linuxserver/docker-baseimage-kasmvnc/tree/master) and any other project or individual that contributed to the realization of this project.
