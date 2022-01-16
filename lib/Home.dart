import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _listaTarefas = ['Comprar pao', 'Estudar', 'Arrumar a casa'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de tarefas'),
          backgroundColor: Colors.purple,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.purple,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Adicionar Tarefa'),
                    content: TextField(
                      decoration:
                          InputDecoration(labelText: "Digite sua tarefa"),
                      onChanged: (text) {},
                    ),
                    actions: [
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancelar')),
                      TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Salvar')),
                    ],
                  );
                });
          },
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: _listaTarefas.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_listaTarefas[index]),
                      );
                    }))
          ],
        ));
  }
}
