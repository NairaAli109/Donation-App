import 'dart:io';
import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:esc_pos_printer_plus/esc_pos_printer_plus.dart';
import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';
import 'package:path_provider/path_provider.dart';

// class PaymentReceipt extends StatefulWidget {
//   const PaymentReceipt({super.key});
//
//   @override
//   State<PaymentReceipt> createState() => _PrintAndPdfWidgetState();
// }
//
// class _PrintAndPdfWidgetState extends State<PaymentReceipt> {
//   final printerIp = '192.168.0.100'; // عدّليها حسب IP الطابعة بتاعتك
//
//   Future<void> _printReceipt() async {
//     const paper = PaperSize.mm80;
//     final profile = await CapabilityProfile.load();
//     final printer = NetworkPrinter(paper, profile);
//
//     final connect = await printer.connect(printerIp, port: 9100);
//     if (connect == PosPrintResult.success) {
//       printer.text(
//         '*** Fatoorah App ***',
//         styles: const PosStyles(
//           align: PosAlign.center,
//           height: PosTextSize.size2,
//           bold: true,
//         ),
//       );
//       printer.text('Date: 2025-11-04');
//       printer.text('-----------------------------');
//       printer.text('Item 1   x1   50.00 EGP');
//       printer.text('Item 2   x2   30.00 EGP');
//       printer.text('-----------------------------');
//       printer.text(
//         'Total: 110.00 EGP',
//         styles: const PosStyles(align: PosAlign.right, bold: true),
//       );
//       printer.text('Thank you for shopping!');
//       printer.feed(2);
//       printer.cut();
//       printer.disconnect();
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('فشل الاتصال بالطابعة: ${connect.msg}')),
//       );
//     }
//   }
//
//   Future<void> _saveAsPdf() async {
//     final pdf = pw.Document();
//
//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a4,
//         build: (pw.Context context) {
//           return pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: [
//               pw.Center(
//                 child: pw.Text(
//                   '*** Fatoorah App ***',
//                   style: pw.TextStyle(
//                     fontSize: 22,
//                     fontWeight: pw.FontWeight.bold,
//                     color: PdfColors.blue,
//                   ),
//                 ),
//               ),
//               pw.SizedBox(height: 10),
//               pw.Text('Date: 2025-11-04'),
//               pw.Divider(),
//               pw.Text('Item 1   x1   50.00 EGP'),
//               pw.Text('Item 2   x2   30.00 EGP'),
//               pw.Divider(),
//               pw.Align(
//                 alignment: pw.Alignment.centerRight,
//                 child: pw.Text(
//                   'Total: 110.00 EGP',
//                   style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
//                 ),
//               ),
//               pw.SizedBox(height: 20),
//               pw.Center(child: pw.Text('Thank you for shopping!')),
//             ],
//           );
//         },
//       ),
//     );
//
//     final output = await getTemporaryDirectory();
//     final file = File('${output.path}/receipt.pdf');
//     await file.writeAsBytes(await pdf.save());
//
//     await Printing.sharePdf(bytes: await pdf.save(), filename: 'receipt.pdf');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton.icon(
//               icon: const Icon(Icons.print),
//               label: const Text('Print on POS'),
//               onPressed: _printReceipt,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: const Icon(Icons.picture_as_pdf),
//               label: const Text('Save as PDF'),
//               onPressed: _saveAsPdf,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class PaymentReceipt extends StatelessWidget {
  const PaymentReceipt({super.key});

  final String customerName = "Naira Ali";
  final String transactionId = "20";
  final double amount = 500.50;
  final String date = "20/10/2025";
  final String paymentMethod = "cash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('إيصال الدفع')),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {

            /// pdf+ printer
            ///
            final pdf = await generateReceiptPdf();
            await Printing.layoutPdf(
              onLayout: (format) async => pdf.save(),
            );

          },
          child: const Text('طباعة الإيصال'),
        ),
      ),
    );
  }
  Future<pw.Document> generateReceiptPdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a5,
        build: (context) => pw.Container(
          padding: const pw.EdgeInsets.all(20),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Center(
                child: pw.Text(
                  'Payment Receipt',
                  style: pw.TextStyle(
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text('client: $customerName', style: pw.TextStyle(fontSize: 16)),
              pw.Text('amount: ${amount.toStringAsFixed(2)} EGP', style: pw.TextStyle(fontSize: 16)),
              pw.Text('transaction id: $transactionId', style: pw.TextStyle(fontSize: 16)),
              pw.Text('payment method: $paymentMethod', style: pw.TextStyle(fontSize: 16)),
              pw.Text('date: $date', style: pw.TextStyle(fontSize: 16)),
              pw.SizedBox(height: 30),
              pw.Divider(),
              pw.Center(
                child: pw.Text(
                  'thanks for using our app',
                  style: pw.TextStyle(fontSize: 14, color: PdfColors.grey700),
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return pdf;
  }


}
