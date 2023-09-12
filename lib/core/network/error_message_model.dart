import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable{
  final String status_message;
  final int status_code;
  final bool success;

  ErrorMessageModel({
    required this.status_message,
    required this.status_code,
    required this.success});

factory ErrorMessageModel.fromJson(Map<String,dynamic> json){
   return ErrorMessageModel(
       status_message: json["status_message"],
       status_code: json["status_code"],
       success: json["success"]);
 }

  @override
  List<Object?> get props => [status_message,status_code,success];
}