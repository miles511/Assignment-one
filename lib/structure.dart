import 'package:flutter/material.dart';

import 'informationData.dart';
import 'constant.dart';
import 'package:intl/intl.dart';
import 'main.dart';


class Structure extends StatefulWidget {
  const Structure({Key? key}) : super(key: key);

  @override
  State<Structure> createState() => _StructureState();
}

class _StructureState extends State<Structure> {


  List<TransactionData> transactionData = [
    TransactionData(name: 'Johnson Mike', payment: 'credit', amount: 23000, date: DateTime.now()),
     TransactionData(name: 'Olamide taiwo', payment: 'debit', amount: 5000, date: DateTime.now()),
    TransactionData(name: 'Majasan Shola', payment: 'debit', amount: 17000, date: DateTime.now()),
    TransactionData(name: 'Kelvin Shola', payment: 'credit', amount: 10000, date: DateTime.now()),

  ];

  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Container(
          child: ListView.builder(itemBuilder:
              (context, index){

                return ListTile(
                leading:  CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                      // iconUpdate(transactionData[index])
                      transactionData[index].payment == "credit" ? Icons.arrow_back  : Icons.arrow_forward,

                  ),
                ),
                title: Text(transactionData[index].name,
                style: kTitleTextStyle,
                ),
                subtitle: Text(transactionData[index].payment,
                ),
                trailing: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text( NumberFormat.simpleCurrency(locale: 'en_NG',decimalDigits: 2).format(transactionData[index].amount,),
                      style: transactionData[index].payment == "credit" ? kCreditAlert : kDebitAlert,
                      ),
                      Text('${transactionData[index].date.hour} : ${transactionData[index].date.minute} : ${transactionData[index].date.second}',

                      ),
                    ],
                  ),
                )
            );
          },
           itemCount: transactionData.length,
          )
      ),
    );
  }
}
