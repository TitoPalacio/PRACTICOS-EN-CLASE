import math
import tkinter as tk

class CalculatorGUI:
    def __init__(self, master):
        self.master = master
        master.title("Calculadora Científica")

        
        self.label1 = tk.Label(master, text="Primer número:")
        self.label2 = tk.Label(master, text="Segundo número:")
        self.label3 = tk.Label(master, text="Resultado:")
        self.num1_entry = tk.Entry(master)
        self.num2_entry = tk.Entry(master)
        self.result_entry = tk.Entry(master, state="readonly")
        self.sum_button = tk.Button(master, text="+", command=self.sumar)
        self.subtract_button = tk.Button(master, text="-", command=self.restar)
        self.multiply_button = tk.Button(master, text="*", command=self.multiplicar)
        self.divide_button = tk.Button(master, text="/", command=self.dividir)
        self.power_button = tk.Button(master, text="x^y", command=self.potencia)
        self.sqrt_button = tk.Button(master, text="√", command=self.raiz_cuadrada)
        self.sin_button = tk.Button(master, text="sin", command=self.seno)
        self.cos_button = tk.Button(master, text="cos", command=self.coseno)
        self.tan_button = tk.Button(master, text="tan", command=self.tangente)
        self.log_button = tk.Button(master, text="ln", command=self.logaritmo_natural)
        self.quit_button = tk.Button(master, text="Salir", command=master.quit)

        
        self.label1.grid(row=0, column=0)
        self.num1_entry.grid(row=0, column=1)
        self.label2.grid(row=1, column=0)
        self.num2_entry.grid(row=1, column=1)
        self.label3.grid(row=2, column=0)
        self.result_entry.grid(row=2, column=1)
        self.sum_button.grid(row=3, column=0)
        self.subtract_button.grid(row=3, column=1)
        self.multiply_button.grid(row=4, column=0)
        self.divide_button.grid(row=4, column=1)
        self.power_button.grid(row=5, column=0)
        self.sqrt_button.grid(row=5, column=1)
        self.sin_button.grid(row=6, column=0)
        self.cos_button.grid(row=6, column=1)
        self.tan_button.grid(row=7, column=0)
        self.log_button.grid(row=7, column=1)
        self.quit_button.grid(row=8, column=1)

    def sumar(self):
        num1 = float(self.num1_entry.get())
        num2 = float(self.num2_entry.get())
        resultado = num1 + num2
        self.result_entry.configure(state="normal")
        self.result_entry.delete(0, "end")
        self.result_entry.insert(0, resultado)
        self.result_entry.configure(state="readonly")

    def restar(self):
        num1 = float(self.num1_entry.get())
        num2 = float(self.num2_entry.get())
        resultado = num1 - num2
        self.result_entry.configure(state="normal")
        self.result_entry.delete(0, "end")
        self.result_entry.insert(0, resultado)
        self.result_entry.configure(state="readonly")

   
