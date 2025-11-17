import 'package:donation_app/core/theming/app_colors.dart';
import 'package:donation_app/core/widgets/custom_button.dart';
import 'package:donation_app/core/widgets/custom_text.dart';
import 'package:donation_app/core/widgets/spacer/vertical_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_printer/flutter_bluetooth_printer_library.dart';

///3
class PaymentReceipt extends StatefulWidget {
  const PaymentReceipt({super.key});

  @override
  State<PaymentReceipt> createState() => _PaymentReceiptState();
}

class _PaymentReceiptState extends State<PaymentReceipt> {
  ReceiptController? controller;

  bool failedDeviceConnection = false;
  Object error = "no error";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("receipt")),
      body: Receipt(
        /// You can build your receipt widget that will be printed to the device
        /// Note that, this feature is in experimental, you should make sure your widgets will be fit on every device.
        builder:
            (context) => Column(
              children: [
                CustomText(
                  text: "Receipt",
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
                VerticalSpace(height: 5),
                CustomText(
                  text: "Address, Country ",
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
                VerticalSpace(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        text: "sl",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: CustomText(
                        text: "product",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: "price",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: "total",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                VerticalSpace(height: 5),
                Divider(color: AppColors.primaryColorForFatoorah),
                Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        text: "1",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: CustomText(
                        text: "test1",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: "20",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: "20",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                VerticalSpace(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: CustomText(
                        text: "2",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: CustomText(
                        text: "test2",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: "400",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomText(
                        text: "400",
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                VerticalSpace(height: 20),
                if (failedDeviceConnection == true)
                  Column(
                    children: [
                      CustomButton(
                        text: "failed connection",
                        fillColor: Colors.red,
                      ),
                      CustomText(text: "error::: $error"),
                    ],
                  )
              ],
            ),
        onInitialized: (controller) {
          this.controller = controller;
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsDirectional.all(16),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateColor.transparent,
            shadowColor: WidgetStateColor.transparent,
          ),
          onPressed: () async {
            final device = await FlutterBluetoothPrinter.selectDevice(context);
            if (device != null) {
              try {
                await controller!.print(address: device.address);
              } catch (e) {
                print("failed connection $e");
                setState(() {
                  failedDeviceConnection = true;
                  error = e;
                });
              }
            } else {
              print("failed connection");
              setState(() {
                failedDeviceConnection = true;
              });
            }
          },
          child: CustomText(
            text: "select printer and print receipt",
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

///1
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

///2
// class PaymentReceipt extends StatelessWidget {
//   const PaymentReceipt({super.key});
//
//   final String customerName = "Naira Ali";
//   final String transactionId = "20";
//   final double amount = 500.50;
//   final String date = "20/10/2025";
//   final String paymentMethod = "cash";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('إيصال الدفع')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () async {
//
//             /// pdf+ printer
//             ///
//             final pdf = await generateReceiptPdf();
//             await Printing.layoutPdf(
//               onLayout: (format) async => pdf.save(),
//             );
//
//           },
//           child: const Text('طباعة الإيصال'),
//         ),
//       ),
//     );
//   }
//   Future<pw.Document> generateReceiptPdf() async {
//     final pdf = pw.Document();
//
//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a5,
//         build: (context) => pw.Container(
//           padding: const pw.EdgeInsets.all(20),
//           child: pw.Column(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: [
//               pw.Center(
//                 child: pw.Text(
//                   'Payment Receipt',
//                   style: pw.TextStyle(
//                     fontSize: 24,
//                     fontWeight: pw.FontWeight.bold,
//                   ),
//                 ),
//               ),
//               pw.SizedBox(height: 20),
//               pw.Text('client: $customerName', style: pw.TextStyle(fontSize: 16)),
//               pw.Text('amount: ${amount.toStringAsFixed(2)} EGP', style: pw.TextStyle(fontSize: 16)),
//               pw.Text('transaction id: $transactionId', style: pw.TextStyle(fontSize: 16)),
//               pw.Text('payment method: $paymentMethod', style: pw.TextStyle(fontSize: 16)),
//               pw.Text('date: $date', style: pw.TextStyle(fontSize: 16)),
//               pw.SizedBox(height: 30),
//               pw.Divider(),
//               pw.Center(
//                 child: pw.Text(
//                   'thanks for using our app',
//                   style: pw.TextStyle(fontSize: 14, color: PdfColors.grey700),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//
//     return pdf;
//   }
//
//
// }
