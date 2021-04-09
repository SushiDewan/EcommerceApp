import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.data,
        this.success,
        this.status,
        this.message,
    });

    List<dynamic> data;
    bool success;
    int status;
    String message;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        data: List<dynamic>.from(json["data"].map((x) => x)),
        success: json["success"],
        status: json["status"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x)),
        "success": success,
        "status": status,
        "message": message,
    };
}
