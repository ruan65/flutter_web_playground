import 'dart:html';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class FilePickerDemo extends StatefulWidget {
  @override
  _FilePickerDemoState createState() => _FilePickerDemoState();
}

class _FilePickerDemoState extends State<FilePickerDemo> {
  Uint8List uploadedImage;
  String optionText = 'no text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('pick file'),
          onPressed: _startFilePicker,
        ),
      ),
    );
  }

  _startFilePicker() async {
    InputElement uploadInput = FileUploadInputElement();
    uploadInput.click();

    uploadInput.onChange.listen((e) {
      // read file content as dataURL
      final files = uploadInput.files;
      if (files.length == 1) {
        final file = files[0];
        FileReader reader = FileReader();

        print('file: $file');

        reader.onLoadEnd.listen((e) {
          print('load ends: $e');
//          print('reader result: ${reader.result}');

          setState(() {
            uploadedImage = reader.result;
          });
        });

        reader.onError.listen((fileEvent) {
          setState(() {
            optionText = "Some Error occured while reading the file";
          });
        });

        reader.readAsArrayBuffer(file);
      }
    });
  }
}
