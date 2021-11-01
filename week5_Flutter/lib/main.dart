import 'package:flutter/material.dart';

enum GenderList { male, female }

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State {
  final _formKey = GlobalKey<FormState>();
  GenderList _gender = GenderList.female;
  bool _choice1 = false;
  bool _choice2 = false;
  bool _choice3 = false;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: new Form(
            key: _formKey,
            child: new ListView(
              children: <Widget>[
                new Text(
                  'Ваши имя и фамилия:',
                  style: TextStyle(fontSize: 10.0),
                ),
                new TextFormField(validator: (value) {
                  if (value!.isEmpty) return 'Пожалуйста введите свое имя';
                }),
                new SizedBox(height: 10.0),
                new Text(
                  'Контактный E-mail:',
                  style: TextStyle(fontSize: 10.0),
                ),
                new TextFormField(validator: (value) {
                  if (value!.isEmpty) return 'Пожалуйста введите свой E-mail';
                  if (!value.contains('@')) return 'Это не E-mail';
                }),
                new SizedBox(height: 10.0),
                new Text(
                  'Контактный телефон:',
                  style: TextStyle(fontSize: 10.0),
                ),
                new TextFormField(validator: (value) {
                  if (value!.isEmpty)
                    return 'Пожалуйста введите свой номер телефона';
                }),
                new SizedBox(height: 10.0),
                new Text(
                  'Кличка питомца:',
                  style: TextStyle(fontSize: 10.0),
                ),
                new TextFormField(validator: (value) {
                  if (value!.isEmpty) return 'Пожалуйста введите имя питомца';
                }),
                new SizedBox(height: 10.0),
                new Text(
                  'Порода питомца:',
                  style: TextStyle(fontSize: 10.0),
                ),
                new TextFormField(validator: (value) {
                  if (value!.isEmpty)
                    return 'Пожалуйста введите породу питомца';
                }),
                new SizedBox(height: 10.0),
                new Text(
                  'Пол питомца:',
                  style: TextStyle(fontSize: 10.0),
                ),
                new RadioListTile(
                  title: const Text('Самец'),
                  value: GenderList.male,
                  groupValue: _gender,
                  onChanged: (GenderList? value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
                new RadioListTile(
                  title: const Text('Самка'),
                  value: GenderList.female,
                  groupValue: _gender,
                  onChanged: (GenderList? value) {
                    setState(() {
                      _gender = value!;
                    });
                  },
                ),
                new SizedBox(height: 10.0),
                new Text(
                  'Чем питается:',
                  style: TextStyle(fontSize: 10.0),
                ),
                new CheckboxListTile(
                    value: _choice1,
                    title: new Text('сухой корм'),
                    onChanged: (bool? value) =>
                        setState(() => _choice1 = value!)),
                new CheckboxListTile(
                    value: _choice2,
                    title: new Text('влажный корм'),
                    onChanged: (bool? value) =>
                        setState(() => _choice2 = value!)),
                new CheckboxListTile(
                    value: _choice3,
                    title: new Text('натуральный корм'),
                    onChanged: (bool? value) =>
                        setState(() => _choice3 = value!)),
                new RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Color color = Colors.red;
                      String text;

                      if (_gender == null)
                        text = 'Выберите пол питомца';
                      else if (_choice1 && _choice2 && _choice3 == false)
                        text = 'Выберите корм питомца';
                      else {
                        text = 'Форма успешно заполнена';
                        color = Colors.green;
                      }

                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(text),
                        backgroundColor: color,
                      ));
                    }
                  },
                  child: Text('Проверить'),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ],
            )));
  }
}

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
        appBar: new AppBar(
            title: new Text('Регистрация питомца'), centerTitle: true),
        body: new MyForm())));
