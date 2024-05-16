import serial

# Configurar el puerto serial
puerto_serial = serial.Serial('COM6', baudrate=12000000, bytesize=serial.EIGHTBITS, parity=serial.PARITY_NONE, stopbits=serial.STOPBITS_ONE)

# Función para enviar 512 veces un byte de 8 bits del 0 al 255
def enviar_bytes():
    puerto_serial.write(bytes_a_enviar)  # Enviar todos los bytes al puerto serial

# Función para recibir 131072 bytes de 8 bits y guardarlos directamente en un archivo de texto como enteros
def recibir_y_guardar_enteros():
    with open('bytes_recibidos_enteros.txt', 'w') as file:
        bytes_recibidos = puerto_serial.read(131072)  # Leer 131072 bytes del puerto serial
        enteros_recibidos = [int(byte) for byte in bytes_recibidos]  # Convertir los bytes a enteros
        for entero in enteros_recibidos:
            file.write(str(entero) + '\n')  # Escribir cada entero en una nueva línea en el archivo


bytes_a_enviar = bytes(range(256)) * 512  # Crear una secuencia de bytes del 0 al 255, repetida 512 veces

# Enviar bytes por el puerto serial
enviar_bytes()

# Esperar hasta recibir 131072 bytes y guardarlos directamente en un archivo de texto como enteros
recibir_y_guardar_enteros()

# Crear el archivo 'bytes_enviados.txt' con los datos enviados
with open('bytes_enviados.txt', 'w') as file:
    for i in range(512):
        for j in range(256):
            file.write(str(j) + '\n')

# Leer los bytes enviados desde el archivo de texto
with open('bytes_enviados.txt', 'r') as file:
    bytes_enviados = [int(byte) for byte in file.read().split()]

# Leer los bytes recibidos desde el archivo de texto
with open('bytes_recibidos_enteros.txt', 'r') as file:
    bytes_recibidos = [int(byte) for byte in file.read().split()]

# Verificar si los bytes enviados son iguales a los bytes recibidos
errores = []
for i in range(len(bytes_enviados)):
    if bytes_enviados[i] != bytes_recibidos[i]:
        errores.append(i)

# Guardar los índices de errores encontrados en un archivo de texto
with open('errores_encontrados.txt', 'w') as file:
    if errores:
        file.write(' '.join(map(str, errores)))

if errores:
    print("Se encontraron", len(errores), "errores.")
else:
    print("No se encontraron errores.")
