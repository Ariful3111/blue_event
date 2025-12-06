import 'package:blue_event/core/routes/app_routes.dart';
import 'package:blue_event/features/auth/bindings/create_new_password_bindings.dart';
import 'package:blue_event/features/auth/bindings/forgot_password_bindings.dart';
import 'package:blue_event/features/auth/bindings/signup_bindings.dart';
import 'package:blue_event/features/auth/views/login.dart';
import 'package:blue_event/features/auth/views/signup.dart';
import 'package:blue_event/features/auth/bindings/login_bindings.dart';
import 'package:blue_event/features/cart/bindings/cart_bindings.dart';
import 'package:blue_event/features/cart/bindings/cart_list_bindings.dart';
import 'package:blue_event/features/cart/views/cart.dart';
import 'package:blue_event/features/chat/bindings/chat_bindings.dart';
import 'package:blue_event/features/chat/bindings/conversation_bindings.dart';
import 'package:blue_event/features/chat/views/chat.dart';
import 'package:blue_event/features/home/bindings/carousel_binding.dart';
import 'package:blue_event/features/home/bindings/details_bindings.dart';
import 'package:blue_event/features/home/bindings/favorite_bindings.dart';
import 'package:blue_event/features/home/bindings/holud_bindings.dart';
import 'package:blue_event/features/home/bindings/home_bindings.dart';
import 'package:blue_event/features/home/bindings/main_home_bindings.dart';
import 'package:blue_event/features/home/bindings/my_category_bindings.dart';
import 'package:blue_event/features/home/bindings/my_drawer_bindings.dart';
import 'package:blue_event/features/home/bindings/related_service_bindings.dart';
import 'package:blue_event/features/home/bindings/wedding_bindings.dart';
import 'package:blue_event/features/home/views/details.dart';
import 'package:blue_event/features/home/views/favorite.dart';
import 'package:blue_event/features/home/views/holud.dart';
import 'package:blue_event/features/home/views/home_page.dart';
import 'package:blue_event/features/home/views/main_home_page.dart';
import 'package:blue_event/features/home/views/my_drawer.dart';
import 'package:blue_event/features/home/views/my_category.dart';
import 'package:blue_event/features/home/views/notification.dart';
import 'package:blue_event/features/home/views/wedding.dart';
import 'package:blue_event/features/profile/bindings/profile_bindings.dart';
import 'package:blue_event/features/profile/bindings/profile_edit_bindings.dart';
import 'package:blue_event/features/profile/bindings/update_password_bindings.dart';
import 'package:blue_event/features/profile/views/about_us.dart';
import 'package:blue_event/features/profile/views/contact_us.dart';
import 'package:blue_event/features/profile/views/privacy_policy.dart';
import 'package:blue_event/features/profile/views/profile.dart';
import 'package:blue_event/features/profile/views/profile_edit.dart';
import 'package:blue_event/features/profile/views/terms_condition.dart';
import 'package:blue_event/features/quation/bindings/get_quotatuion_bindings.dart';
import 'package:blue_event/features/quation/bindings/quotatuion_bindings.dart';
import 'package:blue_event/features/quation/bindings/quotatuion_view_bindings.dart';
import 'package:blue_event/features/quation/views/get_quotation.dart';
import 'package:blue_event/features/quation/views/quotation.dart';
import 'package:blue_event/features/quation/views/quotation_confirmation.dart';
import 'package:blue_event/features/quation/views/quotation_view.dart';
import 'package:blue_event/features/splash/bindings/splash_bindings.dart';
import 'package:blue_event/features/splash/views/splash_screen.dart';
import 'package:get/get.dart';

final List<GetPage> appRoutes = [
  GetPage(
    name: AppRoutes.splashscreen,
    page: () => SplashScreen(),
    binding: SplashBindings(),
  ),
  GetPage(
    name: AppRoutes.login,
    page: () => Login(),
    bindings: [
      LoginBindings(),
      ForgotPasswordBindings(),
      CreateNewPasswordBindings(),
    ],
  ),
  GetPage(
    name: AppRoutes.signup,
    page: () => Signup(),
    binding: SignupBindings(),
  ),
  GetPage(
    name: AppRoutes.home,
    page: () => HomePage(),
    bindings: [
      HomeBindings(),
      MycarouselBinding(),
      MainHomeBindings(),
      WeddingBindings(),
      MyCategoryBindings(),
      HoludBindings(),
    ],
  ),

  GetPage(
    name: AppRoutes.mainHome,
    page: () => MainHomePage(),
    bindings: [
      MainHomeBindings(),
      HomeBindings(),
      MycarouselBinding(),
      WeddingBindings(),
      MyCategoryBindings(),
      HoludBindings(),
      CartBindings(),
      CartListBindings(),
      QuotatuionBindings(),
      MyDrawerBindings(),
      ConversationBindings(),
      ChatBindings(),
      GetQuotatuionBindings(),
      UpdatePasswordBindings(),
      ProfileBindings(),
    ],
  ),
  GetPage(
    name: AppRoutes.myCategory,
    page: () => MyCategory(),
    bindings: [MyCategoryBindings()],
  ),
  GetPage(
    name: AppRoutes.favorite,
    page: () => Favorite(),
    bindings: [FavoriteBindings(), WeddingBindings(), HoludBindings()],
  ),
  GetPage(
    name: AppRoutes.holud,
    page: () => Holud(),
    bindings: [HomeBindings()],
  ),

  GetPage(
    name: AppRoutes.wedding,
    page: () => Wedding(),
    bindings: [WeddingBindings()],
  ),
  GetPage(
    name: AppRoutes.cart,
    page: () => Cart(),
    bindings: [CartBindings(), CartListBindings(), GetQuotatuionBindings()],
  ),
  GetPage(
    name: AppRoutes.quotion,
    page: () => Quotation(),
    bindings: [QuotatuionBindings(), GetQuotatuionBindings()],
  ),
  GetPage(
    name: AppRoutes.chat,
    page: () => Chat(),
    bindings: [ChatBindings(), ConversationBindings()],
  ),
  GetPage(
    name: AppRoutes.profile,
    page: () => Profile(),
    bindings: [ProfileBindings(), UpdatePasswordBindings()],
  ),
  GetPage(name: AppRoutes.notification, page: () => Notification()),
  GetPage(name: AppRoutes.myDrawer, page: () => MyDrawer()),
  GetPage(
    name: AppRoutes.details,
    page: () => Details(),
    bindings: [DetailsBindings(), RelatedServiceBindings()],
  ),
  GetPage(
    name: AppRoutes.getquotation,
    page: () => GeTQuotation(),
    bindings: [QuotatuionBindings(), GetQuotatuionBindings()],
  ),
  GetPage(
    name: AppRoutes.quotationView,
    page: () => QuotatuionView(),
    bindings: [QuotatuionViewBindings()],
  ),
  GetPage(
    name: AppRoutes.quotationConfirm,
    transition: Transition.fadeIn,
    transitionDuration: const Duration(milliseconds: 500),
    page: () => QuotatuionConfirmation(),
  ),
  GetPage(
    name: AppRoutes.profileEdit,
    page: () => ProfileEdit(),
    bindings: [ProfileEditBindings()],
  ),
  GetPage(name: AppRoutes.aboutUs, page: () => AboutUs()),
  GetPage(name: AppRoutes.privacyPolicy, page: () => PrivacyPolicy()),
  GetPage(name: AppRoutes.termsCondition, page: () => TermsCondition()),
  GetPage(name: AppRoutes.contactUs, page: () => ContactUs()),
];
