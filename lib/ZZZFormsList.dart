/*import 'package:flutter/material.dart';

final maroon = const Color(0xFF8A1538);

class Form {
  String formName;
  String formDetails;
  String img;
  Form({this.formName, this.formDetails, this.img});
}

class FormsList extends StatefulWidget {
  @override
  FormsListState createState() => FormsListState();
}

class FormsListState extends State<FormsList> {
  List<Widget> _formTiles = [];
  final GlobalKey _listKey = GlobalKey();
  List<Form> _forms;
  @override
  void initState() {
    super.initState();
    _addForms();
  }

  void _addForms() {
    _forms = [
      Form(
          formName: 'Form 5A',
          formDetails: 'Form given after enrollment',
          img: ''),
      Form(
          formName: 'Dropping Form',
          formDetails: 'Form for dropping a subject',
          img: ''),
    ];

    _forms.forEach((Form form) {
      _formTiles.add(_buildTile(form));
    });
  }
/*
  void _removeForm(Form A) {
    _forms.remove(A);
  }*/

  Widget _buildTile(Form form) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.all(5),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(form.formName, style: TextStyle(fontSize: 20, color: maroon)),
          Text('${form.formDetails}',
              style: TextStyle(fontSize: 12, color: Colors.grey[600])),
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.download_sharp,
          color: Colors.grey[400],
          size: 30,
        ),
        onPressed: () {},
      ),
      leading: IconButton(
        icon: Icon(
          Icons.account_balance_sharp,
          color: Colors.grey[400],
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        key: _listKey,
        itemCount: _formTiles.length,
        itemBuilder: (context, index) {
          return _formTiles[index];
        });
  }
}

class FormsPage extends StatefulWidget {
  @override
  FormsPageState createState() => FormsPageState();
}

class FormsPageState extends State<FormsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.pushNamed(context, "/FormsEdit");
          },
          icon: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          label: Text('Update Forms'),
          foregroundColor: Colors.orange,
          backgroundColor: maroon,
        ),
        backgroundColor: Colors.blueGrey[50],
        body: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bGlicmFyeXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topLeft),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                SizedBox(
                  height: 160,
                  child: Text(
                    'Forms',
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(
                  child: FormsList(),
                )
              ],
            )));
  }
}

class FormsEdit extends StatefulWidget {
  @override
  FormsEditState createState() => FormsEditState();
}

class FormsEditState extends State<FormsEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edit Forms'),
          centerTitle: true,
          backgroundColor: maroon,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1593672572837-d1bb82b59370?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80',
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/FormsAdd");
                        },
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Add Forms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1574629173115-01ba37282238?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=711&q=80',
                      ),
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Edit Forms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Ink.image(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1599183954724-84005c744c28?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                      ),
                      child: InkWell(
                        onTap: () {},
                      ),
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Remove Forms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class AddForms extends StatefulWidget {
  @override
  AddFormsState createState() => AddFormsState();
}

class AddFormsState extends State<AddForms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Forms'),
          centerTitle: true,
          backgroundColor: maroon,
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: maroon),
                  ),
                  labelStyle: TextStyle(color: maroon),
                  labelText: 'Enter Form Name',
                ),
              ),
              SizedBox(height: 15),
              TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: maroon),
                  ),
                  labelStyle: TextStyle(color: maroon),
                  labelText: 'Enter Steps Here',
                ),
                maxLines: null,
              ),
              SizedBox(height: 15),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: maroon),
                  ),
                  labelStyle: TextStyle(color: maroon),
                  labelText: 'Enter Form Hyperlink Here',
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Add Form'),
                  style: ElevatedButton.styleFrom(
                      primary: maroon,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ));
  }
}
*/
