import serial, time

port = "/dev/ttyACM2"
baud = 115200

s = serial.Serial(port)
s.baudrate = baud

while True:
    data = s.readline()
    print(data)
    time.sleep(1)
