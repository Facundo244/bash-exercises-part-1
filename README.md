# Ejercicios de Bash - Parte 1 💻

Este repositorio contiene una serie de ejercicios prácticos en **Bash** que cubren desde tareas básicas hasta avanzadas. Fueron creados durante mi pasantía y están orientados a la automatización de tareas en sistemas Linux.

## Sistema Operativo Requerido 🖥️

Los ejercicios están diseñados para ejecutarse en sistemas basados en **Linux**. Es posible que funcionen también en **macOS** y otros sistemas similares a Unix, pero no están garantizados en sistemas Windows sin el uso de un entorno de Linux como **WSL** (Windows Subsystem for Linux) o una máquina virtual.

**Requisitos:**
- Sistema operativo: **Linux** (Ubuntu, Debian, CentOS, etc.) o **macOS**.
- **Bash** (versión 4.0 o superior).
- Dependencias adicionales: Algunas tareas pueden requerir herramientas comunes como `cron`, `mysql`, `sendmail`, entre otras, que están disponibles en la mayoría de distribuciones de Linux por defecto.

### 🖥️ Ejercicios Principiantes 🌱
1. **Imprimir el nombre de usuario actual** - `ejercicio-1.sh`
2. **Listar archivos en un directorio** - `ejercicio-2.sh`
3. **Contar la cantidad de líneas en un archivo** - `ejercicio-3.sh`
4. **Imprimir la fecha actual** - `ejercicio-4.sh`
5. **Mostrar el espacio libre en disco** - `ejercicio-5.sh`

### 🔧 Ejercicios Intermedios 🔨
1. **Buscar un patrón en archivos** - `ejercicio-6.sh`
2. **Crear un archivo con la fecha en el nombre** - `ejercicio-7.sh`
3. **Contar archivos por extensión** - `ejercicio-8.sh`
4. **Copiar archivos a un directorio de respaldo** - `ejercicio-9.sh`
5. **Eliminar archivos mayores a cierto tamaño** - `ejercicio-10.sh`

### 🚀 Ejercicios Avanzados ⚡
1. **Mover archivos modificados hace más de X días** - `ejercicio-11.sh`
2. **Generar un reporte de uso de CPU** - `ejercicio-12.sh`
3. **Programar un script con cron** - `ejercicio-13.sh`
4. **Monitorizar un archivo de log en tiempo real** - `ejercicio-14.sh`
5. **Crear un backup de una base de datos MySQL** - `ejercicio-15.sh`
6. **Enviar un correo electrónico con adjuntos** - `ejercicio-16.sh`
7. **Crear usuarios automáticamente** - `ejercicio-17.sh`
8. **Monitorear el uso de memoria** - `ejercicio-18.sh`
9. **Crear un menú interactivo** - `ejercicio-19.sh`
10. **Script para cifrar y descifrar archivos** - `ejercicio-20.sh`

## Instrucciones de Ejecución ⚙️

Para ejecutar los scripts de Bash, sigue estos pasos:

1. **Clona el repositorio**:  
   Si aún no lo has hecho, clona este repositorio en tu máquina local:

```bash
git clone https://github.com/Facundo244/bash-exercises-part-1.git
```
2. **Navega al directorio:**
   Ve al directorio donde se encuentran los scripts:
```bash
cd bash-exercises-part-1
```
3.  **Haz el script ejecutable:**
    Antes de ejecutar un script, asegúrate de que tiene permisos de ejecución.
    Por ejemplo, para hacer ejecutable el script ejercicio1.sh, usa el siguiente comando:

```bash
chmod +x ejercicio-1.sh
```
4. **Ejecuta el script:**
   Una vez que el script es ejecutable, puedes correrlo directamente desde la terminal. Por ejemplo:

  ```bash
  ./ejercicio-1.sh
  ```

Este comando ejecutará el script ejercicio1.sh, que imprime el nombre de usuario actual en tu terminal.

**Ejemplos de Uso 💡**

Aquí tienes algunos ejemplos de cómo ejecutar los scripts:

**Ejercicio 1:** Imprimir el nombre de usuario actual:

  ```bash
  ./ejercicio-1.sh
  ```
  **Salida esperada:**
  ```bash
  Nombre de usuario actual: facundo
  ```
  **Ejercicio 6: Buscar un patrón en archivos:**

  Si quieres buscar el patrón "error" en los archivos de log, ejecuta el siguiente script:
  ```bash
  ./ejercicio-6.sh "/var/log/syslog" "error"
  ```
  **Salida esperada:**
  ```bash
  Se encontraron 3 ocurrencias de "error" en /var/log/syslog
  ```

