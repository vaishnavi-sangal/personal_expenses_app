import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  //NewTransaction({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function newTx;

  NewTransaction(this.newTx);

//  NewTransaction(this.tx);
  /*void submitData(
    {
      tx(titleController.text,
      double.parse(amountController.text)

      ),
    }
  )*/
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Price'),
                controller: amountController,
                keyboardType: TextInputType.number,
                // onSubmitted: submitData,
              ),
              FlatButton(
                  onPressed: () {
                    newTx(titleController.text,
                        double.parse(amountController.text));
                    // tx(titleController.text,double.parse(amountController.text));
                  },
                  child: Text('Add Transaction')),
              SizedBox(
                width: double.infinity,
                height: 10,
              )
            ],
          ),
        ),
      ],
    );
  }
}
