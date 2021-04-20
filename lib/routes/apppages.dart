import 'package:event/Screens/create_event/create_events.dart';
import 'package:event/Screens/eventsDetailScreen/eventdetailscreen.dart';
import 'package:event/Screens/home_screen.dart';
import 'package:event/Screens/myticket/myticket.dart';
import 'package:event/rootview/rootview.dart';
import 'package:event/routes/approutes.dart';
import 'package:event/screens/favourite/favouritescreen.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = Routes.RootView;

  static final routes = [
    GetPage(name: Routes.RootView, page: () => RootView()),
    GetPage(name: Routes.HomeScreen, page: () => HomeScreen()),
    GetPage(name: Routes.EventDetailScreen, page: () => EventDetailScreen()),
    GetPage(name: Routes.CreateEvents, page: () => CreateEvents()),
    GetPage(name: Routes.MyTicket, page: () => MyTicket()),
    GetPage(name: Routes.FavouriteScreen, page: () => FavouriteScreen()),
  ];
}
