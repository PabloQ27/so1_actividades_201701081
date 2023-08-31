## Instalación de systemd
Regularmente `systemd` ya viene instalada con linux pero si este no es el caso vamos a ejecutar el siguiente comando:


```bash
sudo apt-get update
sudo apt-get install systemd
```
## Crear un servicio systemd para imprimir un saludo y la fecha actual

### Paso 1: Crea el script

Crear el script que imprimirá el saludo y la fecha. `saludo.sh` el cual contendra el siguiente codigo

```bash
#!/bin/bash
echo "Hola, ¡bienvenido!"
echo "La fecha actual es: $(date)"
```
### Paso 2: Persmisos
Dar permisos de ejecución al script

```bash
chmod +x saludo_script.sh
```

### Paso 3: Archivo systemd
Crear archivo para la unidad systemd, lo nombraremos  `saludo.service` y lo editaremos con nado
```bash
sudo nano /etc/systemd/system/saludo.service
```

aqui mismo agregaremos el siguitente codigo al archivo
```
[Unit]
Description=Saludo y fecha actual

[Service]
Type=simple
ExecStart=/home/pabloq27/Escritorio/so1_actividades_201701081/actividad4.sh

[Install]
WantedBy=default.target
```

### Paso 4: Habilitación
Habilitaremos los permisos para que se pueda ejecutar el servicio, con los siguientes comandos
```bash
sudo systemctl daemon-reload
sudo systemctl enable saludo.service
```

### Paso 5: Ejecución
Ejecutaremos el servicio con el siguiente comando.
```bash
sudo systemctl status saludo.service
```