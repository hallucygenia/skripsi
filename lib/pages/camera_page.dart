import 'dart:ffi';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:camera/camera.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  late Future<void> _initializeControllerFuture;

  Future<dynamic> initializeCamera() async {
    var cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.medium);
    await controller.initialize();
  }

  @override
  Void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<File> takePicture() async {
    Directory root = await getTemporaryDirectory();
    String directoryPath = '${root.path}/Guided.Camera';
    await Directory(directoryPath).create(recursive: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
