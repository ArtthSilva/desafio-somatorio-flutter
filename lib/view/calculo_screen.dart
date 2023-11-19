import 'package:escribo_desafio/controller/calculo_controller.dart';
import 'package:escribo_desafio/widgets/custom_textformfield.dart';
import 'package:flutter/material.dart';
class CalculoScreen extends StatelessWidget {
  CalculoScreen({super.key});
  final controller = CalculoController();
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Somatório'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          const Text('Digite um número inteiro POSITIVO'),
          Container(
            margin: const EdgeInsets.only(left: 50, right: 50, top: 10),
            child: Form(
              key: _formKey,
              child: CustomTextFormFieldWidget(controller: _controller)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  controller.somatorioDivisiveis(int.parse(_controller.text));
                  controller.mostrarResultado = true;
                }
              },
              child: const Text('calcular'),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: AnimatedBuilder(
              animation: controller,
              builder: (_, __) => controller.mostrarResultado
                  ? Text(
                      'Resultado: ${controller.resultado}',
                      style: const TextStyle(fontSize: 18),
                    )
                  : const Text(''),
            ),
          ),
        ],
      ),
    ));
  }
}
