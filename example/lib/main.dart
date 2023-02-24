import 'package:adyen_payment/adyen_payment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _service = AdyenTerminalService(
    config: const PointOfSaleConfig(
      saleId: 'BakerSoft_BakerSoftDev_TEST',
      poiId: 'P400Plus-805826800',
      apiKey: 'AQEkhmfuXNWTK0Qc+iSSk289tdeUTp8cu7xw0xzw7n7HefjYLoaREMFdWw2+5HzctViMSCJMYAc=-w4zJUILzxCWZ/SOnuzAa2LfVADJMYYSueCvSn6Yssfo=-.xju6QHFt9\$F_4.v'
    ),
  );

  var _text = '';
  MakePaymentResponse? _resp;
  String? _serviceId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text(_text),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _pay,
            child: const Text('p'),
          ),
          const SizedBox(height: 24),
          FloatingActionButton(
            onPressed: _cancel,
            child: const Text('c'),
          ),
          const SizedBox(height: 24),
          FloatingActionButton(
            onPressed: _status,
            child: const Text('s'),
          ),
          const SizedBox(height: 24),
          FloatingActionButton(
            onPressed: _refund,
            child: const Text('r'),
          ),
        ],
      ),
    );
  }

  Future<void> _pay() async {
    final response = _service.requestPayment(amount: 0.1);

    setState(() {
      _serviceId = response.serviceId;
    });

    var data = await response.future;
    setState(() {
      _resp = data;
      _text = data.payment.isSuccessful.toString();
    });
  }

  Future<void> _cancel() async {
    if (_serviceId == null) {
      return;
    }

    try {
      await _service.abortPaymentRequest(serviceId: _serviceId!).future;
      setState(() {
        _text = "Success cancel";
      });
    } catch (e) {
      setState(() {
        _text = "Cancel failed $e";
      });
    }

  }

  Future<void> _status() async {
    var data = await _service.requestStatus().future;
    setState(() {
      final resp = data.responseData.transactionStatusResponse.response;

      if (resp.isInProgress) {
        _text = 'In progress';
      } else {
        _text = data.responseData.transactionStatusResponse.repeatedMessageResponse!.body.paymentResponse.response.result.toString();
      }
    });
  }

  Future<void> _refund() async {
    if (_resp == null) {
      return;
    }

    var data = await _service.refundByReference(
      transaction: _resp!.payment.poiData,
    ).future;

    setState(() {
      _text = data.reversal.isSuccessful.toString();
    });
  }
}
