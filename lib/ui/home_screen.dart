import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Container(
          //padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 10),

              /// HEADER
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.grey,
                child: Row(
                  children: [Image.asset("lib/assets/pblogo.png", height: 40)],
                ),
              ),

              const SizedBox(height: 10),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bom Dia! 28 de Fevereiro de 2026",
                  style: TextStyle(fontSize: 13),
                ),
              ),

              const SizedBox(height: 15),

              /// CARD PRINCIPAL
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                child: Column(
                  children: const [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Visualização Inteligente",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.lightbulb, color: Colors.amber),
                      ],
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Visualize seus dispositivos e monitore cada um deles.\n"
                      "Receba estimativas e previsões de produção.\n\n"
                      "Verifique o estado do dispositivo se está ativo ou não.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const Icon(Icons.arrow_downward, size: 28),

              const SizedBox(height: 20),

              /// CARD DISPOSITIVO
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Máquina de Corte:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "OPERANDO",
                      style: TextStyle(fontSize: 11),
                    ),
                    const SizedBox(height: 10),

                    const Text(
                      "ESP32: CONECTADO",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.memory, size: 40),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade600,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("VISUALIZAR"),
                        )
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15),

              /// OUTROS DISPOSITIVOS
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add, size: 28),
                      SizedBox(width: 8),
                      Text(
                        "OUTROS DISPOSITIVOS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 15),

              /// BOTÕES INFERIORES
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _bottomButton(Icons.settings, "Configurações"),
                  _bottomButton(Icons.person, "Usuário"),
                ],
              ),

              const SizedBox(height: 15),

              /// SOBRE
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text(
                    "Sobre",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget _bottomButton(IconData icon, String text) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Icon(icon),
            const SizedBox(height: 5),
            Text(text),
          ],
        ),
      ),
    );
  }
}