import 'package:flutter/material.dart';

class FaqsScreen extends StatelessWidget {
  FaqsScreen({super.key});

  final List<FAQItem> faqItems = [
    FAQItem(
      question: "¿Cómo crear una cuenta?",
      answer:
          "Para crear una cuenta, ve a la pantalla de registro y sigue los pasos indicados.",
    ),
    FAQItem(
      question: "¿Cómo restablecer mi contraseña?",
      answer:
          "Para restablecer tu contraseña, haz clic en '¿Olvidaste tu contraseña?' en la pantalla de inicio de sesión.",
    ),
    FAQItem(
      question: "¿Cómo actualizar mis datos personales?",
      answer:
          "Ve a la sección de configuración y selecciona 'Editar perfil' para actualizar tus datos.",
    ),
    FAQItem(
      question: "¿Cómo eliminar mi cuenta?",
      answer:
          "Si deseas eliminar tu cuenta, por favor contacta a soporte técnico para asistencia.",
    ),
  ];

  final List<FAQItem> faqItems2 = [
    FAQItem(
      question: "¿Cómo reservar tickets?",
      answer:
          "Para reservar el tickets de la empresa que desea solo debe hacr clic en el boton AQUIRIR.",
    ),
    FAQItem(
      question: "¿Que metodos de pago aceptan?",
      answer: "Se aceptan: Yape, BCP y Interbank.",
    ),
    FAQItem(
      question: "¿Cual es su politica de cancelacion y reembolso?",
      answer: "Establecer expectativas y límites con los clientes.",
    ),
    FAQItem(
      question: "¿Que sucede si hay un error?",
      answer: "Dirigirse a nuestras redes sociales y contactarnos.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preguntas frecuentes'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sobre la app',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16.0),
              ExpansionPanelList.radio(
                children: faqItems.map<ExpansionPanelRadio>((FAQItem item) {
                  return ExpansionPanelRadio(
                    value: item.question,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          item.question,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      );
                    },
                    body: ListTile(
                      subtitle: Text(item.answer),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 24.0),
              Text(
                'Sobre la empresa',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16.0),
              ExpansionPanelList.radio(
                children: faqItems2.map<ExpansionPanelRadio>((FAQItem item) {
                  return ExpansionPanelRadio(
                    value: item.question,
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          item.question,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      );
                    },
                    body: ListTile(
                      subtitle: Text(item.answer),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
