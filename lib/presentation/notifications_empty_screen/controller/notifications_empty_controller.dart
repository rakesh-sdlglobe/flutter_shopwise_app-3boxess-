import 'package:beg_app/core/app_export.dart';import 'package:beg_app/presentation/notifications_empty_screen/models/notifications_empty_model.dart';/// A controller class for the NotificationsEmptyScreen.
///
/// This class manages the state of the NotificationsEmptyScreen, including the
/// current notificationsEmptyModelObj
class NotificationsEmptyController extends GetxController {Rx<NotificationsEmptyModel> notificationsEmptyModelObj = NotificationsEmptyModel().obs;

 }
