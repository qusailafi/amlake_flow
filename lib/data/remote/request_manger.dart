import 'dart:convert';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import '../../domain/error.dart';
import '../../domain/general_response.dart';

import 'package:http_parser/http_parser.dart';

 import '../../presentation/dialogs/error_dialog.dart';
import '../../utils/utils.dart';
class NetWorkCalls {
  Future<GeneralResponse> getApi(String apiName, Map<String, String>? headers,
      Map<String, String>? params) async {
    GeneralResponse generalResponse = GeneralResponse(message: "", data: "");
    dynamic jsonResponse = null;
    try {
      Uri uri = Uri.parse(Utils.BASE_URL + apiName).replace(queryParameters: params);
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult[0].toString() !=
          ConnectivityResult.none.toString()) {
        String queryString = Uri(queryParameters: params).query;
        var response = await http.get(
            uri,
            headers: headers);
        switch (response.statusCode) {
          case 200:
            {
              print("Api Response \n"+response.body);
              jsonResponse = response.body;

              generalResponse.data = jsonResponse;
              break;
            }
          case 400:
            Map<String, dynamic> data =
            jsonDecode(response.body);

            var errorsData = data['errors'];

            if (errorsData != null) {
              if (errorsData is Map && errorsData.isNotEmpty) {
                String firstKey = errorsData.keys.first;
                if (errorsData[firstKey] != null &&
                    (errorsData[firstKey] is List) &&
                    (errorsData[firstKey] as List).isNotEmpty) {
                  generalResponse.message = errorsData[firstKey][0].toString();
                } else {
                  generalResponse.message = "Validation error";
                }
              } else if (errorsData is List && errorsData.isNotEmpty) {
                generalResponse.message = errorsData.first.toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else {
              generalResponse.message = data['message'] ?? "Validation error";
            }

            generalResponse.data = "";

            break;

          case 401:
            unAuthPopUp( Get.context!, "يرجئ تسجيل الدخول");

            break;
          case 404:
          case 500:
            try {
              ApiResponse apiResponse =
              ApiResponse.fromJson(jsonDecode(response.body));
              generalResponse.message = apiResponse.data?.first ??
                  response.reasonPhrase ??
                  "Error occurred";
            } catch (_) {
              generalResponse.message =
                  response.reasonPhrase ?? "Error occurred";
            }
            generalResponse.data = "";
            break;

          default:
            generalResponse.message = response.reasonPhrase ?? "Unknown error";
            generalResponse.data = "";
            break;
        }
      } else {
        generalResponse.data = "";

        generalResponse.message = "Check Your Connection";
      }
    } catch (e) {
      generalResponse.data = "";

      generalResponse.message = "Exception Ocurred";
    }
    return generalResponse;
  }
  Future<GeneralResponse> postApiSendMsg(String apiName, Map<String, String>? headers,
      String body) async {
    GeneralResponse generalResponse = GeneralResponse(message: "", data: "");
    dynamic jsonResponse;

    try {
      var connectivityResult = await (Connectivity().checkConnectivity());
      String? jsonString = null;
      if (body != null) {
        jsonString = jsonEncode(body).toString();
      }
      if (connectivityResult[0].toString() !=
          ConnectivityResult.none.toString()) {
        var response = await http.post(Uri.parse(Utils.BASE_URL + apiName),
            headers: headers, body: jsonString);
        switch (response.statusCode) {
          case 200:
            {
              jsonResponse = response.body;
              generalResponse.data = jsonResponse;
              break;
            }
          case 400:
            Map<String, dynamic> data =
            jsonDecode(response.body);

            var errorsData = data['errors'];

            if (errorsData != null) {
              if (errorsData is Map && errorsData.isNotEmpty) {
                String firstKey = errorsData.keys.first;
                if (errorsData[firstKey] != null &&
                    (errorsData[firstKey] is List) &&
                    (errorsData[firstKey] as List).isNotEmpty) {
                  generalResponse.message = errorsData[firstKey][0].toString();
                } else {
                  generalResponse.message = "Validation error";
                }
              } else if (errorsData is List && errorsData.isNotEmpty) {
                generalResponse.message = errorsData.first.toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else {
              generalResponse.message = data['message'] ?? "Validation error";
            }

            generalResponse.data = "";

            break;

          case 401:
            unAuthPopUp( Get.context!, "يرجئ تسجيل الدخول");

            break;
          case 404:
          case 500:
            Map<String, dynamic> data = jsonDecode(response.body); // ✅ يجب أن يكون Map

            var errorsData = data['errors'];

            if (errorsData != null) {
              if (errorsData is Map && errorsData.isNotEmpty) {
                String firstKey = errorsData.keys.first;
                if (errorsData[firstKey] != null &&
                    (errorsData[firstKey] is List) &&
                    (errorsData[firstKey] as List).isNotEmpty) {
                  generalResponse.message = errorsData[firstKey][0].toString();
                } else {
                  generalResponse.message = "Validation error";
                }
              } else if (errorsData is List && errorsData.isNotEmpty) {
                generalResponse.message = errorsData.first.toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else {
              generalResponse.message = data['message'] ?? "Validation error";
            }

            generalResponse.data = "";

            generalResponse.data = "";
            break;

          default:
            generalResponse.message = response.reasonPhrase ?? "Unknown error";
            generalResponse.data = "";
            break;
        }
      } else {
        generalResponse.data = "";

        generalResponse.message = "Check Your Connection";
      }
    } catch (e) {
      generalResponse.data = "";

      generalResponse.message = "Exception Ocurred";
    }
    return generalResponse;
  }

  Future<GeneralResponse> postApi(String apiName, Map<String, String>? headers,
      Map<String, dynamic>? body) async {
    GeneralResponse generalResponse = GeneralResponse(message: "", data: "");
    dynamic jsonResponse;
    String? jsonString = null;
    if (body != null) {
      jsonString = jsonEncode(body).toString();
    }
    try {
      var connectivityResult = await (Connectivity().checkConnectivity());

      if (connectivityResult[0].toString() !=
          ConnectivityResult.none.toString()) {
        var response = await http.post(Uri.parse(Utils.BASE_URL + apiName),
            headers: headers, body: jsonString);
        switch (response.statusCode) {
          case 200:
            {
              jsonResponse = response.body;
              generalResponse.data = jsonResponse;
              break;
            }
          case 400:
            Map<String, dynamic> data =
            jsonDecode(response.body);

            var errorsData = data['errors'];

            if (errorsData != null) {
              if (errorsData is Map && errorsData.isNotEmpty) {
                String firstKey = errorsData.keys.first;
                if (errorsData[firstKey] != null &&
                    (errorsData[firstKey] is List) &&
                    (errorsData[firstKey] as List).isNotEmpty) {
                  generalResponse.message = errorsData[firstKey][0].toString();
                } else {
                  generalResponse.message = "Validation error";
                }
              } else if (errorsData is List && errorsData.isNotEmpty) {
                generalResponse.message = errorsData.first.toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else {
              generalResponse.message = data['message'] ?? "Validation error";
            }

            generalResponse.data = "";

            break;

          case 401:
            unAuthPopUp( Get.context!, "يرجئ تسجيل الدخول");

            break;
          case 404:
          case 500:
            Map<String, dynamic> data = jsonDecode(response.body); // ✅ يجب أن يكون Map

            var errorsData = data['errors'];

            if (errorsData != null) {
              if (errorsData is Map && errorsData.isNotEmpty) {
                String firstKey = errorsData.keys.first;
                if (errorsData[firstKey] != null &&
                    (errorsData[firstKey] is List) &&
                    (errorsData[firstKey] as List).isNotEmpty) {
                  generalResponse.message = errorsData[firstKey][0].toString();
                } else {
                  generalResponse.message = "Validation error";
                }
              } else if (errorsData is List && errorsData.isNotEmpty) {
                generalResponse.message = errorsData.first.toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else {
              generalResponse.message = data['message'] ?? "Validation error";
            }

            generalResponse.data = "";

            generalResponse.data = "";
            break;

          default:
            generalResponse.message = response.reasonPhrase ?? "Unknown error";
            generalResponse.data = "";
            break;
        }
      } else {
        generalResponse.data = "";

        generalResponse.message = "Check Your Connection";
      }
    } catch (e) {
      generalResponse.data = "";

      generalResponse.message = "Exception Ocurred";
    }
    return generalResponse;
  }


  Future<GeneralResponse> postLoginApi(String apiName, Map<String, String>? headers,
      Map<String, dynamic>? body) async {
    GeneralResponse generalResponse = GeneralResponse(message: "", data: "");
    dynamic jsonResponse;
    String? jsonString = null;
    if (body != null) {
      jsonString = jsonEncode(body).toString();
     }
    try {
      var connectivityResult = await (Connectivity().checkConnectivity());

      if (connectivityResult[0].toString() !=
          ConnectivityResult.none.toString()) {
        var response = await http.post(Uri.parse(Utils.BASE_URL + apiName),
            headers: headers, body: jsonString);
        switch (response.statusCode) {
          case 200:
            {
              jsonResponse = response.body;
              generalResponse.data = jsonResponse;
              break;
            }
          case 400:
            Map<String, dynamic> data =
                jsonDecode(response.body);

            var errorsData = data['errors'];

            if (errorsData != null) {
              if (errorsData is Map && errorsData.isNotEmpty) {
                String firstKey = errorsData.keys.first;
                if (errorsData[firstKey] != null &&
                    (errorsData[firstKey] is List) &&
                    (errorsData[firstKey] as List).isNotEmpty) {
                  generalResponse.message = errorsData[firstKey][0].toString();
                } else {
                  generalResponse.message = "Validation error";
                }
              } else if (errorsData is List && errorsData.isNotEmpty) {
                generalResponse.message = errorsData.first.toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else {
              generalResponse.message = data['message'] ?? "Validation error";
            }

            generalResponse.data = "";

            break;

          case 401:
            Map<String, dynamic> data =
            jsonDecode(response.body);

            var errorsData = data['errors'];

            if (errorsData != null) {
              if (errorsData is Map && errorsData.isNotEmpty) {
                String firstKey = errorsData.keys.first;
                if (errorsData[firstKey] != null &&
                    (errorsData[firstKey] is List) &&
                    (errorsData[firstKey] as List).isNotEmpty) {
                  generalResponse.message = errorsData[firstKey][0].toString();
                } else {
                  generalResponse.message = "Validation error";
                }
              } else if (errorsData is List && errorsData.isNotEmpty) {
                generalResponse.message = errorsData.first.toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else {
              generalResponse.message = data['message'] ?? "Validation error";
            }

            generalResponse.data = "";

            unAuthPopUpLogin( Get.context!, generalResponse.message);

            break;
          case 404:
          case 500:
          Map<String, dynamic> data = jsonDecode(response.body); // ✅ يجب أن يكون Map

          var errorsData = data['errors'];

          if (errorsData != null) {
            if (errorsData is Map && errorsData.isNotEmpty) {
              String firstKey = errorsData.keys.first;
              if (errorsData[firstKey] != null &&
                  (errorsData[firstKey] is List) &&
                  (errorsData[firstKey] as List).isNotEmpty) {
                generalResponse.message = errorsData[firstKey][0].toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else if (errorsData is List && errorsData.isNotEmpty) {
              generalResponse.message = errorsData.first.toString();
            } else {
              generalResponse.message = "Validation error";
            }
          } else {
            generalResponse.message = data['message'] ?? "Validation error";
          }

          generalResponse.data = "";

          generalResponse.data = "";
            break;

          default:
            generalResponse.message = response.reasonPhrase ?? "Unknown error";
            generalResponse.data = "";
            break;
        }
      } else {
        generalResponse.data = "";

        generalResponse.message = "Check Your Connection";
      }
    } catch (e) {
      generalResponse.data = "";

      generalResponse.message = "Exception Ocurred";
    }
    return generalResponse;
  }

  Future<GeneralResponse> postForDataMultiple1(
      String apiName,
      Map<String, String> body,
      Map<String, String> header,
      List<File> files,
      ) async {
    GeneralResponse generalResponse = GeneralResponse(message: "", data: "");

    try {
      var connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult == ConnectivityResult.none) {
        generalResponse.message = "Check Your Connection";
        generalResponse.data = "";
        return generalResponse;
      }

      var request = http.MultipartRequest(
        "POST",
        Uri.parse(Utils.BASE_URL + apiName),
      );

      request.headers.addAll(header);
      request.fields.addAll(body);

      for (var file in files) {
        request.files.add(await http.MultipartFile.fromPath(
          "Attachments",
          file.path,
          contentType: MediaType("image", "jpeg"),
        ));
      }

      var response = await request.send();
      String respStr = await response.stream.bytesToString();


      switch (response.statusCode) {
        case 200:
          generalResponse.data = "200";
          generalResponse.message = "Success";
          break;

        case 400:
          Map<String, dynamic> data = jsonDecode(respStr); // ✅ يجب أن يكون Map

          var errorsData = data['errors'];

          if (errorsData != null) {
            if (errorsData is Map && errorsData.isNotEmpty) {
              String firstKey = errorsData.keys.first;
              if (errorsData[firstKey] != null &&
                  (errorsData[firstKey] is List) &&
                  (errorsData[firstKey] as List).isNotEmpty) {
                generalResponse.message = errorsData[firstKey][0].toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else if (errorsData is List && errorsData.isNotEmpty) {
              generalResponse.message = errorsData.first.toString();
            } else {
              generalResponse.message = "Validation error";
            }
          } else {
            generalResponse.message = data['message'] ?? "Validation error";
          }

          generalResponse.data = "";

          break;

        case 401:

          unAuthPopUp( Get.context!, "يرجئ تسجيل الدخول");

          break;
        case 404:
        case 500:
          Map<String, dynamic> data = jsonDecode(respStr);

          var errorsData = data['errors'];

          if (errorsData != null) {
            if (errorsData is Map && errorsData.isNotEmpty) {
              String firstKey = errorsData.keys.first;
              if (errorsData[firstKey] != null &&
                  (errorsData[firstKey] is List) &&
                  (errorsData[firstKey] as List).isNotEmpty) {
                generalResponse.message = errorsData[firstKey][0].toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else if (errorsData is List && errorsData.isNotEmpty) {
              generalResponse.message = errorsData.first.toString();
            } else {
              generalResponse.message = "Validation error";
            }
          } else {
            generalResponse.message = data['message'] ?? "Validation error";
          }

          generalResponse.data = "";

          generalResponse.data = "";
          break;

        default:
          generalResponse.message = response.reasonPhrase ?? "Unknown error";
          generalResponse.data = "";
          break;
      }
    } catch (e) {
      generalResponse.message = "Exception occurred: ${e.toString()}";
      generalResponse.data = "";
    }

    return generalResponse;
  }
  Future<GeneralResponse> postVoiceFile(
      String apiName,
      Map<String, String> header,
      File file,
      ) async {
    GeneralResponse generalResponse = GeneralResponse(
      message: "",
      data: "",
    );

    try {
      final connectivityResult =
      await Connectivity().checkConnectivity();

      if (connectivityResult[0].toString() ==
          ConnectivityResult.none.toString()) {
        generalResponse.message = "Check Your Connection";
        return generalResponse;
      }

      final request = http.MultipartRequest(
        "POST",
        Uri.parse(Utils.BASE_URL + apiName),
      );

      request.headers.addAll(header);

      request.files.add(
        await http.MultipartFile.fromPath(
          "file", // 👈 اسم الـ parameter في الـ API
          file.path,
          contentType: MediaType("audio", "mp4"),
        ),
      );

      final response = await request.send();

      final responseBody =
      await response.stream.bytesToString();

      print("Voice API Status: ${response.statusCode}");
      print("Voice API Response: $responseBody");

      switch (response.statusCode) {
        case 200:
        case 201:
          generalResponse.data = responseBody;
          generalResponse.message = "Success";
          break;

        case 400:
          generalResponse.message = responseBody;
          generalResponse.data = "";
          break;

        case 401:
          unAuthPopUp(
            Get.context!,
            "يرجى تسجيل الدخول",
          );
          generalResponse.data = "";
          break;

        case 404:
        case 500:
          generalResponse.message = responseBody;
          generalResponse.data = "";
          break;

        default:
          generalResponse.message =
              response.reasonPhrase ?? "Unknown error";
          generalResponse.data = "";
          break;
      }
    } catch (e) {
      generalResponse.message =
      "Exception occurred: ${e.toString()}";
      generalResponse.data = "";

      print("Voice Upload Error: $e");
    }

    return generalResponse;
  }

  Future<GeneralResponse> postForDataMultiple(
    String apiName,
    Map<String, String> body,
    Map<String, String> header,
    File? file,
      File ?img

  ) async {
    GeneralResponse generalResponse = GeneralResponse(message: "", data: "");

    try {
      var connectivityResult = await Connectivity().checkConnectivity();

      if (connectivityResult == ConnectivityResult.none) {
        generalResponse.message = "Check Your Connection";
        generalResponse.data = "";
        return generalResponse;
      }

      var request = http.MultipartRequest(
        "POST",
        Uri.parse(Utils.BASE_URL + apiName),
      );

      request.headers.addAll(header);
      request.fields.addAll(body);
if(file!=null)
      request.files.add(await http.MultipartFile.fromPath(
        "Image",
        file.path,
        contentType: MediaType("image", "jpeg"),
      ));
if(img!=null)
      request.files.add(await http.MultipartFile.fromPath(
        "CertificateDocument",
        img.path,
        contentType: MediaType("image", "jpeg"),
      ));

      var response = await request.send();
      String respStr = await response.stream.bytesToString();


      switch (response.statusCode) {
        case 200:
          generalResponse.data = "200";
          generalResponse.message = "Success";
          break;

        case 400:
          Map<String, dynamic> data = jsonDecode(respStr); // ✅ يجب أن يكون Map

          var errorsData = data['errors'];

          if (errorsData != null) {
            if (errorsData is Map && errorsData.isNotEmpty) {
              String firstKey = errorsData.keys.first;
              if (errorsData[firstKey] != null &&
                  (errorsData[firstKey] is List) &&
                  (errorsData[firstKey] as List).isNotEmpty) {
                generalResponse.message = errorsData[firstKey][0].toString();
              } else {
                generalResponse.message = "Validation error";
              }
            } else if (errorsData is List && errorsData.isNotEmpty) {
              generalResponse.message = errorsData.first.toString();
            } else {
              generalResponse.message = "Validation error";
            }
          } else {
            generalResponse.message = data['message'] ?? "Validation error";
          }

          generalResponse.data = "";

          break;

        case 401:

          unAuthPopUp( Get.context!, "يرجئ تسجيل الدخول");

          break;
        case 404:
        case 500:
        Map<String, dynamic> data = jsonDecode(respStr);

        var errorsData = data['errors'];

        if (errorsData != null) {
          if (errorsData is Map && errorsData.isNotEmpty) {
            String firstKey = errorsData.keys.first;
            if (errorsData[firstKey] != null &&
                (errorsData[firstKey] is List) &&
                (errorsData[firstKey] as List).isNotEmpty) {
              generalResponse.message = errorsData[firstKey][0].toString();
            } else {
              generalResponse.message = "Validation error";
            }
          } else if (errorsData is List && errorsData.isNotEmpty) {
            generalResponse.message = errorsData.first.toString();
          } else {
            generalResponse.message = "Validation error";
          }
        } else {
          generalResponse.message = data['message'] ?? "Validation error";
        }

        generalResponse.data = "";

        generalResponse.data = "";
          break;

        default:
          generalResponse.message = response.reasonPhrase ?? "Unknown error";
          generalResponse.data = "";
          break;
      }
    } catch (e) {
      generalResponse.message = "Exception occurred: ${e.toString()}";
      generalResponse.data = "";
    }

    return generalResponse;
  }
}
