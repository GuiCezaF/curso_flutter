import 'package:curso_flutter/infra/extensions.dart';
import 'package:curso_flutter/ui/widgets/botao.dart';
import 'package:flutter/material.dart';

Future showDialogErro(BuildContext context, String erro) async {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (ctxDialog) => Dialog(
      elevation: 8,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints(maxHeight: 200),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Atenção',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            20.toSizedBoxH(),
            Expanded(
              child: SingleChildScrollView(
                child: Text(erro),
              ),
            ),
            20.toSizedBoxH(),
            Botao(
              titulo: 'Fechar',
              onClick: () {
                Navigator.of(ctxDialog).pop();
              },
              color: Colors.red,
            ),
          ],
        ),
      ),
    ),
  );
}
