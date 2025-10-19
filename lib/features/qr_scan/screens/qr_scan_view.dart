import 'package:camera/camera.dart';
import 'package:drop_me_task/features/qr_scan/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class QrScanView extends StatefulWidget {
  const QrScanView({super.key});

  @override
  State<QrScanView> createState() => _QrScanViewState();
}

class _QrScanViewState extends State<QrScanView> {
  List<CameraDescription> cameras = [];
  CameraController? controller;

  @override
  void initState() {
    super.initState();
    _setUpCameraController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildUI(),appBar: AppBar(),);
  }

  Widget buildUI() {
    if (controller == null || controller?.value.isInitialized == false) {
      return Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(20),
                child: const Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 80.0,
                ),
              ),
              const SizedBox(height: 32.0),

              const Text(
                "Confirm Your Deposit",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 12.0),

              const Text(
                "You are make a deposit at the RVM located in:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8.0),

              Text(
                "10th of Ramadan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 40.0),

              PrimaryButton(
                title: "Confirm Deposit",
                color: Colors.green,
              ),
              const SizedBox(height: 16.0),
              PrimaryButton(
                title: "Cancel",
                color: Colors.grey,
              ),

              const Spacer(),

              const Text(
                "Welcome to your RVM",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _setUpCameraController() async {
    List<CameraDescription> cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      setState(() {
        cameras = cameras;
        controller = CameraController(cameras.first, ResolutionPreset.high);
      });
      controller?.initialize().then((_) {
        setState(() {});
      });
    }
  }
}
