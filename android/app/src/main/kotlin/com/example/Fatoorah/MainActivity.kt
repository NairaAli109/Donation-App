package com.example.Fatoorah

import io.flutter.embedding.android.FlutterActivity

class MainActivity : FlutterActivity()


//package com.example.donation_app
//
//import io.flutter.embedding.android.FlutterActivity
//import io.flutter.embedding.engine.FlutterEngine
//import io.flutter.plugin.common.MethodChannel
//import kotlinx.coroutines.*
//
//class MainActivity : FlutterActivity() {
//    private val CHANNEL = "com.example.donation_app/pos_payment"
//
//    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
//        super.configureFlutterEngine(flutterEngine)
//
//        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
//            .setMethodCallHandler { call, result ->
//                if (call.method == "startPayment") {
//                    val amount = call.argument<Double>("amount")
//
//                    // 🟢 هنا بتضيف كود SDK الحقيقي لما يوصلك
//                    // مثال:
//                    //                    val response = nearPaySdk.makePayment(amount)
////                    result.success(mapOf("status" to response.status, "message" to response.message))
//
//                    // مؤقتًا هنجرب simulate
//                    simulatePayment(amount, result)
//                } else {
//                    result.notImplemented()
//                }
//            }
//    }
//
//    private fun simulatePayment(amount: Double?, result: MethodChannel.Result) {
//        GlobalScope.launch(Dispatchers.Main) {
//            delay(3000) // كأن الجهاز بيعمل العملية
//            val success = listOf(true, false).random() // احتمال نجاح أو فشل
//            if (success) {
//                result.success("Success ✅ (Amount: $amount)")
//            } else {
//                result.success("Failed ❌ (Amount: $amount)")
//            }
//        }
//    }
//}

