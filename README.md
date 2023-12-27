# MetaTrader5 Docker Image

This project provides a Docker image for running MetaTrader5 with remote access via VNC, based on the [KasmVNC](https://github.com/kasmtech/KasmVNC) project and [KasmVNC Base Images from LinuxServer](https://github.com/linuxserver/docker-baseimage-kasmvnc).

## Features

- Run MetaTrader5 in an isolated environment.
- Remote access to MetaTrader5 interface via an integrated VNC client accessible through a web browser.
- Built on the reliable and secure KasmVNC project.
- RPyC server for remote access to Python MetaTrader Library from Windows or Linux using https://github.com/lucas-campagna/mt5linux

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
docker run -d -p 3000:3000 -p 8001:8001 -v config:/config mt5
```

Now you can access MetaTrader5 via a web browser at localhost:3000.

On first run it may take some minutes to get everything installed and running.

## Python programming

You need to install [mt5linux library](https://github.com/lucas-campagna/mt5linux) in your Python host. It may be in any OS, not only Linux.

This is a simple snippet to run your Python script fron any host

```python
from mt5linux import MetaTrader5
mt5 = MetaTrader5(host='host running docker container',port=8001)
mt5.initialize()
print(mt5.version())
```

Output should be something like this:

```
(mt5linux) linux:~/$ python3
Python 3.10.13 (main, Dec 26 2023, 20:21:41) [GCC 13.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> from mt5linux import MetaTrader5
>>> mt5 = MetaTrader5(host='192.168.1.10',port=8001)
>>> mt5.initialize()
True
>>> print(mt5.version())
(500, 4120, '22 Dec 2023')
>>>
```

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
Acknowledgments to the [KasmVNC](https://github.com/kasmtech/KasmVNC) project, [KasmVNC Base Images from LinuxServer](https://github.com/linuxserver/docker-baseimage-kasmvnc/tree/master), [mt5linux library](https://github.com/lucas-campagna/mt5linux)  and any other project or individual that contributed to the realization of this project.
