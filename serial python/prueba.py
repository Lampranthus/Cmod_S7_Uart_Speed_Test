import serial
import msvcrt
import time

def enviar_y_verificar():
    # Configurar el puerto serial
    puerto_serial = serial.Serial('COM6', baudrate=12000000, bytesize=serial.EIGHTBITS, parity=serial.PARITY_NONE, stopbits=serial.STOPBITS_ONE)
    
    # Función para enviar 512 veces un byte de 8 bits del 0 al 255
    def enviar_bytes():
        puerto_serial.write(bytes_a_enviar)  # Enviar todos los bytes al puerto serial

    # Función para recibir 131072 bytes de 8 bits y guardarlos directamente en un archivo de texto como enteros
    def recibir_y_guardar_enteros():
        bytes_recibidos = puerto_serial.read(131072)  # Leer 131072 bytes del puerto serial
        return bytes_recibidos

    inicio = time.time()  # Tiempo de inicio del programa
    #bytes_enviados = bytes(range(256)) * 512
    bytes_a_enviar = bytes(range(256)) * 512  # Crear una secuencia de bytes del 0 al 255, repetida 512 veces
    corrida = 1
    errores_totales = []
    while not msvcrt.kbhit():
        enviar_bytes()
        bytes_recibidos = recibir_y_guardar_enteros()

        errores = []
        for i in range(len(bytes_a_enviar)):
            if bytes_a_enviar[i] != bytes_recibidos[i]:
                errores.append(i)

        if errores:
            errores_totales.extend(errores)
            # Guardar el número de corrida y la cantidad de errores en el archivo de texto
            with open('errores_encontrados.txt', 'a') as file:
                file.write(f"Corrida {corrida}: {len(errores)} errores\n")

        corrida += 1
    
    fin = time.time()  # Tiempo de finalización del programa
    duracion_segundos = fin - inicio
    duracion_horas = duracion_segundos / 3600  # Convertir segundos a horas
    
    print(f"Se realizaron un total de {corrida - 1} ciclos.")
    print(f"Se encontraron un total de {len(errores_totales)} errores en todos los ciclos.")
    print(f"El programa se ejecutó durante {duracion_horas} horas.")

if __name__ == "__main__":
    input("Presiona Enter para iniciar el envío y verificación de bytes.") 
    enviar_y_verificar()
