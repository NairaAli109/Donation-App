import 'dart:async';

import 'package:donation_app/core/helpers/localization/app_localization_ar.dart';
import 'package:donation_app/core/helpers/localization/app_localization_en.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;



// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @a_wide_group_of_chemical_products.
  ///
  /// In ar, this message translates to:
  /// **'مجموعة واسعة من المنتجات الكيميائية'**
  String get a_wide_group_of_chemical_products;

  /// No description provided for @lorem.
  ///
  /// In ar, this message translates to:
  /// **'لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) و التي احتوت أيضاً على نسخ من نص لوريم إيبسوم.'**
  String get lorem;

  /// No description provided for @skip.
  ///
  /// In ar, this message translates to:
  /// **'تخطي'**
  String get skip;

  /// No description provided for @next.
  ///
  /// In ar, this message translates to:
  /// **'التالي'**
  String get next;

  /// No description provided for @previous.
  ///
  /// In ar, this message translates to:
  /// **'السابق'**
  String get previous;

  /// No description provided for @start_now.
  ///
  /// In ar, this message translates to:
  /// **'ابدأ الآن'**
  String get start_now;

  /// No description provided for @various_payment_ways_quick_and_secure.
  ///
  /// In ar, this message translates to:
  /// **'طرق مختلفة للدفع سريعة و آمنة'**
  String get various_payment_ways_quick_and_secure;

  /// No description provided for @heavy_loads_delivery_as_soon_as_possible.
  ///
  /// In ar, this message translates to:
  /// **'توصيل الحملات الثقيلة بأسرع وقت'**
  String get heavy_loads_delivery_as_soon_as_possible;

  /// No description provided for @welcome_to_chemia.
  ///
  /// In ar, this message translates to:
  /// **'مرحباً بكم في كيميا'**
  String get welcome_to_chemia;

  /// No description provided for @enter_your_email_or_create_a_new_account_in_chemia.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بريدك الإلكتروني أو أنشيء حساباً جديداً في كيميا'**
  String get enter_your_email_or_create_a_new_account_in_chemia;

  /// No description provided for @email_or_phone_number.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني أو رقم الهاتف'**
  String get email_or_phone_number;

  /// No description provided for @continueText.
  ///
  /// In ar, this message translates to:
  /// **'استمرار'**
  String get continueText;

  /// No description provided for @or.
  ///
  /// In ar, this message translates to:
  /// **'أو'**
  String get or;

  /// No description provided for @login_via_google.
  ///
  /// In ar, this message translates to:
  /// **'سجل بواسطة جوجل'**
  String get login_via_google;

  /// No description provided for @please_enter_valid_email.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك أدخل بريد إلكتروني صالح'**
  String get please_enter_valid_email;

  /// No description provided for @email_is_required.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني مطلوب'**
  String get email_is_required;

  /// No description provided for @welcome_back_to_chemia.
  ///
  /// In ar, this message translates to:
  /// **'مرحبا بك مجدداً في كيميا'**
  String get welcome_back_to_chemia;

  /// No description provided for @login_once_again_to_your_chemia_acc.
  ///
  /// In ar, this message translates to:
  /// **'قم بالتسجيل مرة أخرى إلى حساب كيميا الخاص بك'**
  String get login_once_again_to_your_chemia_acc;

  /// No description provided for @password.
  ///
  /// In ar, this message translates to:
  /// **'كلمة السر'**
  String get password;

  /// No description provided for @password_is_required.
  ///
  /// In ar, this message translates to:
  /// **'كلمة السر مطلوبة'**
  String get password_is_required;

  /// No description provided for @remember_password.
  ///
  /// In ar, this message translates to:
  /// **'تذكر كلمة السر'**
  String get remember_password;

  /// No description provided for @login.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get login;

  /// No description provided for @forgot_password.
  ///
  /// In ar, this message translates to:
  /// **'هل نسيت كلمة السر؟'**
  String get forgot_password;

  /// No description provided for @reset_password.
  ///
  /// In ar, this message translates to:
  /// **'إعادة تعيين كلمة السر'**
  String get reset_password;

  /// No description provided for @enter_your_email_or_phone_number_and_you_will_receive_a_message_including_instructions_for_password_reset.
  ///
  /// In ar, this message translates to:
  /// **'أدخل بريدك الإلكتروني أو رقم هاتفك و ستصلك رسالة بها تعليمات إعادة تعيين كلمة السر'**
  String get enter_your_email_or_phone_number_and_you_will_receive_a_message_including_instructions_for_password_reset;

  /// No description provided for @send.
  ///
  /// In ar, this message translates to:
  /// **'إرسال'**
  String get send;

  /// No description provided for @confirm_email_or_phone.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد البريد الإلكتروني أو رقم الهاتف'**
  String get confirm_email_or_phone;

  /// No description provided for @confirmation_code_was_sent_to_your_email_or_phone.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال رمز التأكيد إلى بريدك الإلكتروني أو رقم هاتفك،'**
  String get confirmation_code_was_sent_to_your_email_or_phone;

  /// No description provided for @if_it_is_not_correct_you_can_go_back_and_correct_it_then_try_again.
  ///
  /// In ar, this message translates to:
  /// **'إن كان به خطأ، يمكنك الرجوع و تصحيح الخطأ، ثم إعادة المحاولة.'**
  String get if_it_is_not_correct_you_can_go_back_and_correct_it_then_try_again;

  /// No description provided for @have_not_received_code.
  ///
  /// In ar, this message translates to:
  /// **'لم يصلك رمز التأكيد؟'**
  String get have_not_received_code;

  /// No description provided for @send_again.
  ///
  /// In ar, this message translates to:
  /// **'إرسال مجدداً'**
  String get send_again;

  /// No description provided for @confirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get confirm;

  /// No description provided for @code_is_required.
  ///
  /// In ar, this message translates to:
  /// **'يجب إدخال رمز'**
  String get code_is_required;

  /// No description provided for @invalid_code.
  ///
  /// In ar, this message translates to:
  /// **'رمز غير صالح'**
  String get invalid_code;

  /// No description provided for @confirm_password.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة السر'**
  String get confirm_password;

  /// No description provided for @new_password_has_to_be_different_from_previously_used_password.
  ///
  /// In ar, this message translates to:
  /// **'يجب أن تكون كلمة السر الجديدة مختلفة عن كلمة السر المستخدمة سابقاً'**
  String get new_password_has_to_be_different_from_previously_used_password;

  /// No description provided for @password_confirmation_is_required.
  ///
  /// In ar, this message translates to:
  /// **'يجب تأكيد كلمة السر'**
  String get password_confirmation_is_required;

  /// No description provided for @passwords_are_not_identical.
  ///
  /// In ar, this message translates to:
  /// **'كلمتا السر غير متطابقتين'**
  String get passwords_are_not_identical;

  /// No description provided for @create_new_account.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب جديد'**
  String get create_new_account;

  /// No description provided for @acc_info.
  ///
  /// In ar, this message translates to:
  /// **'بيانات الحساب'**
  String get acc_info;

  /// No description provided for @organization_or_personal_name.
  ///
  /// In ar, this message translates to:
  /// **'اسم الشركة / الاسم الشخصي'**
  String get organization_or_personal_name;

  /// No description provided for @industrial_sector.
  ///
  /// In ar, this message translates to:
  /// **'قطاع الصناعة'**
  String get industrial_sector;

  /// No description provided for @phone_number.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف'**
  String get phone_number;

  /// No description provided for @name_is_required.
  ///
  /// In ar, this message translates to:
  /// **'الاسم مطلوب'**
  String get name_is_required;

  /// No description provided for @sector_is_required.
  ///
  /// In ar, this message translates to:
  /// **'قطاع الصناعة مطلوب'**
  String get sector_is_required;

  /// No description provided for @phone_number_is_required.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف مطلوب'**
  String get phone_number_is_required;

  /// No description provided for @countries_codes.
  ///
  /// In ar, this message translates to:
  /// **'رموز الدول'**
  String get countries_codes;

  /// No description provided for @search.
  ///
  /// In ar, this message translates to:
  /// **'بحث'**
  String get search;

  /// No description provided for @home.
  ///
  /// In ar, this message translates to:
  /// **'الرئيسية'**
  String get home;

  /// No description provided for @categories.
  ///
  /// In ar, this message translates to:
  /// **'الفئات'**
  String get categories;

  /// No description provided for @cart.
  ///
  /// In ar, this message translates to:
  /// **'السلة'**
  String get cart;

  /// No description provided for @your_acc.
  ///
  /// In ar, this message translates to:
  /// **'حسابك'**
  String get your_acc;

  /// No description provided for @welcome_back.
  ///
  /// In ar, this message translates to:
  /// **'مرحبا بك مجدداً!!'**
  String get welcome_back;

  /// No description provided for @search2.
  ///
  /// In ar, this message translates to:
  /// **'ابحث'**
  String get search2;

  /// No description provided for @explore_now.
  ///
  /// In ar, this message translates to:
  /// **'اكتشف الآن'**
  String get explore_now;

  /// No description provided for @offers.
  ///
  /// In ar, this message translates to:
  /// **'العروض'**
  String get offers;

  /// No description provided for @more.
  ///
  /// In ar, this message translates to:
  /// **'المزيد'**
  String get more;

  /// No description provided for @available.
  ///
  /// In ar, this message translates to:
  /// **'متوفر'**
  String get available;

  /// No description provided for @origin_country.
  ///
  /// In ar, this message translates to:
  /// **'البلد المنشأ'**
  String get origin_country;

  /// No description provided for @le.
  ///
  /// In ar, this message translates to:
  /// **'ج.م'**
  String get le;

  /// No description provided for @latest_products.
  ///
  /// In ar, this message translates to:
  /// **'أحدث المنتجات'**
  String get latest_products;

  /// No description provided for @products_number.
  ///
  /// In ar, this message translates to:
  /// **'عدد المنتجات'**
  String get products_number;

  /// No description provided for @delete_all.
  ///
  /// In ar, this message translates to:
  /// **'حذف الكل'**
  String get delete_all;

  /// No description provided for @make_an_order.
  ///
  /// In ar, this message translates to:
  /// **'تنفيذ الطلب'**
  String get make_an_order;

  /// No description provided for @wallet.
  ///
  /// In ar, this message translates to:
  /// **'المحفظة'**
  String get wallet;

  /// No description provided for @your_orders.
  ///
  /// In ar, this message translates to:
  /// **'طلباتك'**
  String get your_orders;

  /// No description provided for @fav.
  ///
  /// In ar, this message translates to:
  /// **'المفضلة'**
  String get fav;

  /// No description provided for @credit_cards.
  ///
  /// In ar, this message translates to:
  /// **'بطاقات الائتمان'**
  String get credit_cards;

  /// No description provided for @addresses.
  ///
  /// In ar, this message translates to:
  /// **'العناوين'**
  String get addresses;

  /// No description provided for @returns.
  ///
  /// In ar, this message translates to:
  /// **'المرتجعات'**
  String get returns;

  /// No description provided for @langs.
  ///
  /// In ar, this message translates to:
  /// **'اللغات'**
  String get langs;

  /// No description provided for @contact_us.
  ///
  /// In ar, this message translates to:
  /// **'تواصل معنا'**
  String get contact_us;

  /// No description provided for @privacy_and_security.
  ///
  /// In ar, this message translates to:
  /// **'الخصوصية و الأمان'**
  String get privacy_and_security;

  /// No description provided for @terms_and_conditions.
  ///
  /// In ar, this message translates to:
  /// **'الشروط و الأحكام'**
  String get terms_and_conditions;

  /// No description provided for @promotion.
  ///
  /// In ar, this message translates to:
  /// **'خصم'**
  String get promotion;

  /// No description provided for @for_orders.
  ///
  /// In ar, this message translates to:
  /// **'للطلبات'**
  String get for_orders;

  /// No description provided for @details.
  ///
  /// In ar, this message translates to:
  /// **'التفاصيل'**
  String get details;

  /// No description provided for @packaging.
  ///
  /// In ar, this message translates to:
  /// **'التعبئة'**
  String get packaging;

  /// No description provided for @used_in.
  ///
  /// In ar, this message translates to:
  /// **'يستخدم في'**
  String get used_in;

  /// No description provided for @properties.
  ///
  /// In ar, this message translates to:
  /// **'الخصائص'**
  String get properties;

  /// No description provided for @status.
  ///
  /// In ar, this message translates to:
  /// **'الحالة'**
  String get status;

  /// No description provided for @storage_temp.
  ///
  /// In ar, this message translates to:
  /// **'درجة حرارة التخزين'**
  String get storage_temp;

  /// No description provided for @color.
  ///
  /// In ar, this message translates to:
  /// **'اللون'**
  String get color;

  /// No description provided for @boiling_point.
  ///
  /// In ar, this message translates to:
  /// **'نقطة الغليان'**
  String get boiling_point;

  /// No description provided for @freezing_point.
  ///
  /// In ar, this message translates to:
  /// **'نقطة التجمد'**
  String get freezing_point;

  /// No description provided for @users_reviews.
  ///
  /// In ar, this message translates to:
  /// **'تقييمات المستخدمين'**
  String get users_reviews;

  /// No description provided for @add_review.
  ///
  /// In ar, this message translates to:
  /// **'أضف تقييم'**
  String get add_review;

  /// No description provided for @based_on.
  ///
  /// In ar, this message translates to:
  /// **'بناء على'**
  String get based_on;

  /// No description provided for @reviews.
  ///
  /// In ar, this message translates to:
  /// **'من التقييمات'**
  String get reviews;

  /// No description provided for @show_more.
  ///
  /// In ar, this message translates to:
  /// **'إظهار المزيد'**
  String get show_more;

  /// No description provided for @product_total_coast.
  ///
  /// In ar, this message translates to:
  /// **'إجمالي تكلفة المنتج'**
  String get product_total_coast;

  /// No description provided for @add_to_cart.
  ///
  /// In ar, this message translates to:
  /// **'أضف للسلة'**
  String get add_to_cart;

  /// No description provided for @filter.
  ///
  /// In ar, this message translates to:
  /// **'التصنيف'**
  String get filter;

  /// No description provided for @sort.
  ///
  /// In ar, this message translates to:
  /// **'الترتيب'**
  String get sort;

  /// No description provided for @results.
  ///
  /// In ar, this message translates to:
  /// **'من النتائج'**
  String get results;

  /// No description provided for @create_your_acc_now.
  ///
  /// In ar, this message translates to:
  /// **'أنشئ حسابك الآن لتتمتع بأفضل العروض'**
  String get create_your_acc_now;

  /// No description provided for @create_account.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get create_account;

  /// No description provided for @legal_documents.
  ///
  /// In ar, this message translates to:
  /// **'الوثائق القانونية'**
  String get legal_documents;

  /// No description provided for @settings.
  ///
  /// In ar, this message translates to:
  /// **'الإعدادات'**
  String get settings;

  /// No description provided for @personal_info.
  ///
  /// In ar, this message translates to:
  /// **'المعلومات الشخصية'**
  String get personal_info;

  /// No description provided for @change_email.
  ///
  /// In ar, this message translates to:
  /// **'تغيير البريد الإلكتروني'**
  String get change_email;

  /// No description provided for @change_password.
  ///
  /// In ar, this message translates to:
  /// **'تغيير كلمة السر'**
  String get change_password;

  /// No description provided for @delete_acc.
  ///
  /// In ar, this message translates to:
  /// **'حذف الحساب'**
  String get delete_acc;

  /// No description provided for @category.
  ///
  /// In ar, this message translates to:
  /// **'الفئة'**
  String get category;

  /// No description provided for @packaging_type.
  ///
  /// In ar, this message translates to:
  /// **'نوع التعبئة'**
  String get packaging_type;

  /// No description provided for @price.
  ///
  /// In ar, this message translates to:
  /// **'السعر'**
  String get price;

  /// No description provided for @from.
  ///
  /// In ar, this message translates to:
  /// **'من'**
  String get from;

  /// No description provided for @to.
  ///
  /// In ar, this message translates to:
  /// **'إلى'**
  String get to;

  /// No description provided for @price_is_determined_per_kilogram.
  ///
  /// In ar, this message translates to:
  /// **'يحدد السعر بالكيلوجرام الواحد'**
  String get price_is_determined_per_kilogram;

  /// No description provided for @rating.
  ///
  /// In ar, this message translates to:
  /// **'التقييم'**
  String get rating;

  /// No description provided for @save.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get save;

  /// No description provided for @best_seller.
  ///
  /// In ar, this message translates to:
  /// **'الأكثر مبيعاً'**
  String get best_seller;

  /// No description provided for @price_low_to_high.
  ///
  /// In ar, this message translates to:
  /// **'السعر: من الأقل للأعلى'**
  String get price_low_to_high;

  /// No description provided for @price_high_to_low.
  ///
  /// In ar, this message translates to:
  /// **'السعر: من الأعلى للأقل'**
  String get price_high_to_low;

  /// No description provided for @new_arrivals.
  ///
  /// In ar, this message translates to:
  /// **'أحدث المنتجات'**
  String get new_arrivals;

  /// No description provided for @no_results.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد نتائج'**
  String get no_results;

  /// No description provided for @wallet_balance.
  ///
  /// In ar, this message translates to:
  /// **'رصيد المحفظة'**
  String get wallet_balance;

  /// No description provided for @loan_request.
  ///
  /// In ar, this message translates to:
  /// **'طلب قرض'**
  String get loan_request;

  /// No description provided for @order_number.
  ///
  /// In ar, this message translates to:
  /// **'رقم الطلب'**
  String get order_number;

  /// No description provided for @orders.
  ///
  /// In ar, this message translates to:
  /// **'الطلبات'**
  String get orders;

  /// No description provided for @delivery_date.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ التوصيل'**
  String get delivery_date;

  /// No description provided for @favourites.
  ///
  /// In ar, this message translates to:
  /// **'المفضلة'**
  String get favourites;

  /// No description provided for @card_number.
  ///
  /// In ar, this message translates to:
  /// **'رقم البطاقة'**
  String get card_number;

  /// No description provided for @expiry_date.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الانتهاء'**
  String get expiry_date;

  /// No description provided for @add_new_card.
  ///
  /// In ar, this message translates to:
  /// **'أضف بطاقة جديدة'**
  String get add_new_card;

  /// No description provided for @locations.
  ///
  /// In ar, this message translates to:
  /// **'العناوين'**
  String get locations;

  /// No description provided for @add_your_review.
  ///
  /// In ar, this message translates to:
  /// **'أضف تقييمك'**
  String get add_your_review;

  /// No description provided for @what_is_your_review.
  ///
  /// In ar, this message translates to:
  /// **'ما هو تقييمك للمنتج؟'**
  String get what_is_your_review;

  /// No description provided for @write_your_comment_here.
  ///
  /// In ar, this message translates to:
  /// **'اكتب تعليقك هنا'**
  String get write_your_comment_here;

  /// No description provided for @show_less.
  ///
  /// In ar, this message translates to:
  /// **'إظهار أقل'**
  String get show_less;

  /// No description provided for @add_location.
  ///
  /// In ar, this message translates to:
  /// **'إضافة عنوان'**
  String get add_location;

  /// No description provided for @confirm_location.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد الموقع'**
  String get confirm_location;

  /// No description provided for @location.
  ///
  /// In ar, this message translates to:
  /// **'العنوان'**
  String get location;

  /// No description provided for @location_details.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل العنوان'**
  String get location_details;

  /// No description provided for @locating.
  ///
  /// In ar, this message translates to:
  /// **'جاري تحديد الموقع...'**
  String get locating;

  /// No description provided for @press_the_button_to_locate_you.
  ///
  /// In ar, this message translates to:
  /// **'اضغط على الزر لتحديد موقعك'**
  String get press_the_button_to_locate_you;

  /// No description provided for @location_title.
  ///
  /// In ar, this message translates to:
  /// **'اسم العنوان'**
  String get location_title;

  /// No description provided for @additional_location.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل إضافية للعنوان'**
  String get additional_location;

  /// No description provided for @location_title_is_required.
  ///
  /// In ar, this message translates to:
  /// **'اسم العنوان مطلوب'**
  String get location_title_is_required;

  /// No description provided for @additional_location_is_required.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل إضافية للعنوان مطلوب'**
  String get additional_location_is_required;

  /// No description provided for @location_is_required.
  ///
  /// In ar, this message translates to:
  /// **'العنوان مطلوب'**
  String get location_is_required;

  /// No description provided for @delete_location.
  ///
  /// In ar, this message translates to:
  /// **'حذف العنوان'**
  String get delete_location;

  /// No description provided for @add_new_location.
  ///
  /// In ar, this message translates to:
  /// **'أضف عنواناً جديداً'**
  String get add_new_location;

  /// No description provided for @login_sign_up.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل دخول/إنشاء حساب'**
  String get login_sign_up;

  /// No description provided for @invalid_email_or_phone_number.
  ///
  /// In ar, this message translates to:
  /// **'بريد إلكتروني أو رقم هاتف غير صالح'**
  String get invalid_email_or_phone_number;

  /// No description provided for @invalid_email.
  ///
  /// In ar, this message translates to:
  /// **'بريد إلكتروني غير صالح'**
  String get invalid_email;

  /// No description provided for @email.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @logout.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الخروج'**
  String get logout;

  /// No description provided for @add_credit_card.
  ///
  /// In ar, this message translates to:
  /// **'إضافة بطاقة الإئتمان'**
  String get add_credit_card;

  /// No description provided for @expire_date.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الإنتهاء'**
  String get expire_date;

  /// No description provided for @name_on_card.
  ///
  /// In ar, this message translates to:
  /// **'اسم حامل البطاقة'**
  String get name_on_card;

  /// No description provided for @card_number_is_required.
  ///
  /// In ar, this message translates to:
  /// **'رقم البطاقة مطلوب'**
  String get card_number_is_required;

  /// No description provided for @name_on_card_is_required.
  ///
  /// In ar, this message translates to:
  /// **'اسم حامل البطاقة مطلوب'**
  String get name_on_card_is_required;

  /// No description provided for @expire_date_is_required.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الانتهاء البطاقة مطلوب'**
  String get expire_date_is_required;

  /// No description provided for @cvv_is_required.
  ///
  /// In ar, this message translates to:
  /// **' رقم ال CVV مطلوب '**
  String get cvv_is_required;

  /// No description provided for @cvv_should_be_3.
  ///
  /// In ar, this message translates to:
  /// **'رقم الCVV يجب أن يكون 3 أرقام'**
  String get cvv_should_be_3;

  /// No description provided for @remove_card.
  ///
  /// In ar, this message translates to:
  /// **'حذف البطاقة'**
  String get remove_card;

  /// No description provided for @confirm_to_delete_card.
  ///
  /// In ar, this message translates to:
  /// **'هل انت متأكد من حذف البطاقة؟'**
  String get confirm_to_delete_card;

  /// No description provided for @delete_card_description1.
  ///
  /// In ar, this message translates to:
  /// **' سيتم حذف البطاقة رقم : '**
  String get delete_card_description1;

  /// No description provided for @delete_card_description2.
  ///
  /// In ar, this message translates to:
  /// **' ولن يمكنك استرجاعه مجددا '**
  String get delete_card_description2;

  /// No description provided for @empty_favorites.
  ///
  /// In ar, this message translates to:
  /// **'المفضلة فارغة'**
  String get empty_favorites;

  /// No description provided for @empty_favorites_description.
  ///
  /// In ar, this message translates to:
  /// **'إبدأ بإضافة المنتجات المفضلة لك باضغط على علامة القلب'**
  String get empty_favorites_description;

  /// No description provided for @discover_more.
  ///
  /// In ar, this message translates to:
  /// **'تصفح المنتجات'**
  String get discover_more;

  /// No description provided for @commercial_registration.
  ///
  /// In ar, this message translates to:
  /// **'السجل التجاري'**
  String get commercial_registration;

  /// No description provided for @tax_card.
  ///
  /// In ar, this message translates to:
  /// **'البطاقة الضريبية'**
  String get tax_card;

  /// No description provided for @you_can_not_proceed_to_cart.
  ///
  /// In ar, this message translates to:
  /// **'لا يمكنك المتابعة إلى السلة بدون ادخال بيانات السجل التجاري و السجل الضريبي الخاصة بك.   إن لم يكن لديك سجل تجاري أو سجل ضريبي يرجى الاتصال بخدمة عملاء كيميا على 19887 '**
  String get you_can_not_proceed_to_cart;

  /// No description provided for @proceed_to_cart.
  ///
  /// In ar, this message translates to:
  /// **'متابعة إلى عربة التسوق'**
  String get proceed_to_cart;

  /// No description provided for @unexpected_error.
  ///
  /// In ar, this message translates to:
  /// **'خطأ غير متوقع'**
  String get unexpected_error;

  /// No description provided for @try_again.
  ///
  /// In ar, this message translates to:
  /// **'حاول مجدداً'**
  String get try_again;

  /// No description provided for @connectionError.
  ///
  /// In ar, this message translates to:
  /// **'حدثت مشكلة في الاتصال'**
  String get connectionError;

  /// No description provided for @personal_acc_info.
  ///
  /// In ar, this message translates to:
  /// **'بيانات الحساب الشخصي'**
  String get personal_acc_info;

  /// No description provided for @in_available.
  ///
  /// In ar, this message translates to:
  /// **'غير متوفر'**
  String get in_available;

  /// No description provided for @for_each.
  ///
  /// In ar, this message translates to:
  /// **'لكل'**
  String get for_each;

  /// No description provided for @no_reviews_yet.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد تقييمات حتى الآن'**
  String get no_reviews_yet;

  /// No description provided for @comment_is_required.
  ///
  /// In ar, this message translates to:
  /// **'يجب إضافة تعليق'**
  String get comment_is_required;

  /// No description provided for @company_name.
  ///
  /// In ar, this message translates to:
  /// **'اسم الشركة'**
  String get company_name;

  /// No description provided for @company_name_is_required.
  ///
  /// In ar, this message translates to:
  /// **'اسم الشركة مطلوب'**
  String get company_name_is_required;

  /// No description provided for @industrial_field.
  ///
  /// In ar, this message translates to:
  /// **'قطاع الصناعة'**
  String get industrial_field;

  /// No description provided for @industrial_field_required.
  ///
  /// In ar, this message translates to:
  /// **'قطاع الصناعة مطلوب'**
  String get industrial_field_required;

  /// No description provided for @confirm_change_email.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد البريد الاكتروني'**
  String get confirm_change_email;

  /// No description provided for @confirm_change_email_description1.
  ///
  /// In ar, this message translates to:
  /// **'تم ارسال كود التأكيد على بريدك الاكتروني،'**
  String get confirm_change_email_description1;

  /// No description provided for @confirm_change_email_description2.
  ///
  /// In ar, this message translates to:
  /// **'. ان كان به خطأ يمكنك الرجوع وتصحيح الخطأ ثم اعادة المحاولة'**
  String get confirm_change_email_description2;

  /// No description provided for @confirmation_change_email_code_did_not_sent.
  ///
  /// In ar, this message translates to:
  /// **'لم يصلك كود التأكيد؟'**
  String get confirmation_change_email_code_did_not_sent;

  /// No description provided for @current_password.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور الحالية'**
  String get current_password;

  /// No description provided for @new_password.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور الجديدة'**
  String get new_password;

  /// No description provided for @confirm_new_password.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد كلمة المرور الجديدة'**
  String get confirm_new_password;

  /// No description provided for @confirm_to_delete_acc.
  ///
  /// In ar, this message translates to:
  /// **'هل انت متأكد من حذف حسابك الشخصي؟'**
  String get confirm_to_delete_acc;

  /// No description provided for @confirm_to_delete_acc_description.
  ///
  /// In ar, this message translates to:
  /// **'سيتم التواصل معك بخصوص حذف حسابك الشخصي، تأكد من دفع المستحقات البنكية إذا وجدت حتى يتم قبول طلب حذفك للحساب'**
  String get confirm_to_delete_acc_description;

  /// No description provided for @remove_acc.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get remove_acc;

  /// No description provided for @delete.
  ///
  /// In ar, this message translates to:
  /// **'حذف'**
  String get delete;

  /// No description provided for @password_do_not_match.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور و تأكيد كلمة المرور غير متطابقين.'**
  String get password_do_not_match;

  /// No description provided for @empty_bank_cards_header.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد بطاقات ائتمان حتى الآن '**
  String get empty_bank_cards_header;

  /// No description provided for @empty_bank_cards_description.
  ///
  /// In ar, this message translates to:
  /// **'قم بإضافة بطاقة ائتمانية و تمتع بخدماتنا'**
  String get empty_bank_cards_description;

  /// No description provided for @remove_location.
  ///
  /// In ar, this message translates to:
  /// **'حذف العنوان'**
  String get remove_location;

  /// No description provided for @are_you_sure_you_want_to_delete_the_location.
  ///
  /// In ar, this message translates to:
  /// **'هل انت متأكد من حذف العنوان؟'**
  String get are_you_sure_you_want_to_delete_the_location;

  /// No description provided for @the_address_will_be_deleted.
  ///
  /// In ar, this message translates to:
  /// **' سيتم حذف العنوان'**
  String get the_address_will_be_deleted;

  /// No description provided for @search_results.
  ///
  /// In ar, this message translates to:
  /// **'نتائج البحث'**
  String get search_results;

  /// No description provided for @loan_amount.
  ///
  /// In ar, this message translates to:
  /// **'المبلغ المطلوب'**
  String get loan_amount;

  /// No description provided for @loan_amount_is_required.
  ///
  /// In ar, this message translates to:
  /// **' أدخل المبلغ المطلوب'**
  String get loan_amount_is_required;

  /// No description provided for @first_name.
  ///
  /// In ar, this message translates to:
  /// **'الاسم الأول'**
  String get first_name;

  /// No description provided for @first_name_is_required.
  ///
  /// In ar, this message translates to:
  /// **'الاسم الأول مطلوب'**
  String get first_name_is_required;

  /// No description provided for @last_name.
  ///
  /// In ar, this message translates to:
  /// **'اسم العائلة'**
  String get last_name;

  /// No description provided for @last_name_is_required.
  ///
  /// In ar, this message translates to:
  /// **'اسم العائلة مطلوب'**
  String get last_name_is_required;

  /// No description provided for @personal_ID.
  ///
  /// In ar, this message translates to:
  /// **'الرقم القومي'**
  String get personal_ID;

  /// No description provided for @personal_ID_is_required.
  ///
  /// In ar, this message translates to:
  /// **'الرقم القومي مطلوب'**
  String get personal_ID_is_required;

  /// No description provided for @reason_for_return.
  ///
  /// In ar, this message translates to:
  /// **'سبب إرجاع الطلب'**
  String get reason_for_return;

  /// No description provided for @request_loan.
  ///
  /// In ar, this message translates to:
  /// **'إرسال الطلب'**
  String get request_loan;

  /// No description provided for @card_number_length.
  ///
  /// In ar, this message translates to:
  /// **'رقم بطاقة الإئتمان يجب أن يكون مكون من 16 رقم'**
  String get card_number_length;

  /// No description provided for @edit_credit_card.
  ///
  /// In ar, this message translates to:
  /// **'تعديل بطاقة الإئتمان'**
  String get edit_credit_card;

  /// No description provided for @no_details_about_product.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أي معلومات متاحة عن هذا المنتج في الوقت الحالي.'**
  String get no_details_about_product;

  /// No description provided for @no_properties_about_product.
  ///
  /// In ar, this message translates to:
  /// **'لا توجد أي خصائص متاحة لهذا المنتج في الوقت الحالي.'**
  String get no_properties_about_product;

  /// No description provided for @glass.
  ///
  /// In ar, this message translates to:
  /// **'زجاجات'**
  String get glass;

  /// No description provided for @barrels.
  ///
  /// In ar, this message translates to:
  /// **'براميل'**
  String get barrels;

  /// No description provided for @bags.
  ///
  /// In ar, this message translates to:
  /// **'أكياس'**
  String get bags;

  /// No description provided for @ibc_tanks.
  ///
  /// In ar, this message translates to:
  /// **'خزانات IBC'**
  String get ibc_tanks;

  /// No description provided for @max_price_cannot_be_less_than_min_price.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأعلى للسعر لا يمكن أن يكون أقل من الحد الأدنى له'**
  String get max_price_cannot_be_less_than_min_price;

  /// No description provided for @price_range.
  ///
  /// In ar, this message translates to:
  /// **'مدى السعر'**
  String get price_range;

  /// No description provided for @min_price_cannot_be_greater_than_max_price.
  ///
  /// In ar, this message translates to:
  /// **'الحد الأدنى للسعر لا يمكن أن يكون أكبر من الحد الأعلى له'**
  String get min_price_cannot_be_greater_than_max_price;

  /// No description provided for @price_must_be_a_number.
  ///
  /// In ar, this message translates to:
  /// **'السعر يجب أن يكون رقم'**
  String get price_must_be_a_number;

  /// No description provided for @ordering.
  ///
  /// In ar, this message translates to:
  /// **'إجراء الطلب'**
  String get ordering;

  /// No description provided for @choose_payment_method.
  ///
  /// In ar, this message translates to:
  /// **'اختر طريقة الدفع'**
  String get choose_payment_method;

  /// No description provided for @cash.
  ///
  /// In ar, this message translates to:
  /// **'نقداً'**
  String get cash;

  /// No description provided for @delivery_location.
  ///
  /// In ar, this message translates to:
  /// **'عنوان التوصيل'**
  String get delivery_location;

  /// No description provided for @summary.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الدفع'**
  String get summary;

  /// No description provided for @subtotal.
  ///
  /// In ar, this message translates to:
  /// **'المجموع الفرعي'**
  String get subtotal;

  /// No description provided for @delivery_charges.
  ///
  /// In ar, this message translates to:
  /// **'رسوم الشحن'**
  String get delivery_charges;

  /// No description provided for @discount.
  ///
  /// In ar, this message translates to:
  /// **'خصومات'**
  String get discount;

  /// No description provided for @card_number_can_only_be_numbers.
  ///
  /// In ar, this message translates to:
  /// **'رقم البطاقة يجب أن يكون أرقام'**
  String get card_number_can_only_be_numbers;

  /// No description provided for @card_number_cannot_be_less_or_more_16_digits.
  ///
  /// In ar, this message translates to:
  /// **'رقم البطاقة لا يمكن أن يكون أقل ولا أكثر من 16 رقم'**
  String get card_number_cannot_be_less_or_more_16_digits;

  /// No description provided for @invalid_card_expire_date.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ غير صالح (MM/YY)'**
  String get invalid_card_expire_date;

  /// No description provided for @card_is_expired.
  ///
  /// In ar, this message translates to:
  /// **'البطاقة منتهية'**
  String get card_is_expired;

  /// No description provided for @confirm_card.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد بطاقة الائتمان'**
  String get confirm_card;

  /// No description provided for @cvv_can_only_be_numbers.
  ///
  /// In ar, this message translates to:
  /// **'الرقم الثلاثي يجب أن يكون أرقام'**
  String get cvv_can_only_be_numbers;

  /// No description provided for @please_enter_the_3_digit_number.
  ///
  /// In ar, this message translates to:
  /// **'برجاء إدخال الCVV المكون من ثلاثة أرقام المكتوب خلف بطاقتك الائتمانية'**
  String get please_enter_the_3_digit_number;

  /// No description provided for @your_order_has_been_successfully_received.
  ///
  /// In ar, this message translates to:
  /// **'تم استلام طلبك بنجاح'**
  String get your_order_has_been_successfully_received;

  /// No description provided for @order_details.
  ///
  /// In ar, this message translates to:
  /// **'تفاصيل الطلب'**
  String get order_details;

  /// No description provided for @shop_again.
  ///
  /// In ar, this message translates to:
  /// **'تسوق مرة أخرى'**
  String get shop_again;

  /// No description provided for @total_price.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get total_price;

  /// No description provided for @order.
  ///
  /// In ar, this message translates to:
  /// **'طلباتك'**
  String get order;

  /// No description provided for @order_received.
  ///
  /// In ar, this message translates to:
  /// **'تم استلام الطلب'**
  String get order_received;

  /// No description provided for @order_confirmed.
  ///
  /// In ar, this message translates to:
  /// **'يتم تأكيد الطلب'**
  String get order_confirmed;

  /// No description provided for @product_shipped.
  ///
  /// In ar, this message translates to:
  /// **'تم شحن المنتجات'**
  String get product_shipped;

  /// No description provided for @order_delivered.
  ///
  /// In ar, this message translates to:
  /// **'تم الإستلام'**
  String get order_delivered;

  /// No description provided for @company_location.
  ///
  /// In ar, this message translates to:
  /// **'عنوان الشركة'**
  String get company_location;

  /// No description provided for @active.
  ///
  /// In ar, this message translates to:
  /// **'فعال'**
  String get active;

  /// No description provided for @canceled.
  ///
  /// In ar, this message translates to:
  /// **'ملغى'**
  String get canceled;

  /// No description provided for @delivered.
  ///
  /// In ar, this message translates to:
  /// **'تم الإستلام'**
  String get delivered;

  /// No description provided for @total_payment.
  ///
  /// In ar, this message translates to:
  /// **'ملخص الدفع'**
  String get total_payment;

  /// No description provided for @payment_method.
  ///
  /// In ar, this message translates to:
  /// **'طريقة االدفع'**
  String get payment_method;

  /// No description provided for @shipping_fees.
  ///
  /// In ar, this message translates to:
  /// **'رسوم الشحن'**
  String get shipping_fees;

  /// No description provided for @total.
  ///
  /// In ar, this message translates to:
  /// **'الإجمالي'**
  String get total;

  /// No description provided for @egp.
  ///
  /// In ar, this message translates to:
  /// **'ج,م'**
  String get egp;

  /// No description provided for @cancel_order.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء الطلب'**
  String get cancel_order;

  /// No description provided for @return_request.
  ///
  /// In ar, this message translates to:
  /// **'إرجاع الطلب'**
  String get return_request;

  /// No description provided for @number_of_products.
  ///
  /// In ar, this message translates to:
  /// **'عدد المنتجات'**
  String get number_of_products;

  /// No description provided for @ton.
  ///
  /// In ar, this message translates to:
  /// **'طن'**
  String get ton;

  /// No description provided for @changed_mind.
  ///
  /// In ar, this message translates to:
  /// **'لقد غيرت رأيي'**
  String get changed_mind;

  /// No description provided for @no_longer_want.
  ///
  /// In ar, this message translates to:
  /// **'لم اعد اريد هذا المنتج'**
  String get no_longer_want;

  /// No description provided for @added_by_mistake.
  ///
  /// In ar, this message translates to:
  /// **'اضفت منتج عن طريق الخطأ '**
  String get added_by_mistake;

  /// No description provided for @other.
  ///
  /// In ar, this message translates to:
  /// **'أخرى'**
  String get other;

  /// No description provided for @cancel_order_confirmation.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء الطلب'**
  String get cancel_order_confirmation;

  /// No description provided for @return_product_request.
  ///
  /// In ar, this message translates to:
  /// **'إرجاع الطلب'**
  String get return_product_request;

  /// No description provided for @product_Return_reason.
  ///
  /// In ar, this message translates to:
  /// **'سبب إرجاع الطلب'**
  String get product_Return_reason;

  /// No description provided for @reason_explanation.
  ///
  /// In ar, this message translates to:
  /// **'اشرح سبب إرجاع الطلب'**
  String get reason_explanation;

  /// No description provided for @add_order_photos.
  ///
  /// In ar, this message translates to:
  /// **'أضف صور الطلب'**
  String get add_order_photos;

  /// No description provided for @submit.
  ///
  /// In ar, this message translates to:
  /// **'إرسال الطلب'**
  String get submit;

  /// No description provided for @expected_delivery_date.
  ///
  /// In ar, this message translates to:
  /// **'تاريخ الوصول المتوقع'**
  String get expected_delivery_date;

  /// No description provided for @looks_like_u_r_n_the_guest_mode.
  ///
  /// In ar, this message translates to:
  /// **'يبدو أنك في وضع الزائر'**
  String get looks_like_u_r_n_the_guest_mode;

  /// No description provided for @to_continue_please_login_to_your_acc_or_create_a_new_acc.
  ///
  /// In ar, this message translates to:
  /// **'للاستمرار من فضلك سجل دخول لحسابك أو أنشئ حساباً جديداً'**
  String get to_continue_please_login_to_your_acc_or_create_a_new_acc;

  /// No description provided for @sign_up.
  ///
  /// In ar, this message translates to:
  /// **'أنشئ حساباً'**
  String get sign_up;

  /// No description provided for @alert.
  ///
  /// In ar, this message translates to:
  /// **'تنبيه'**
  String get alert;

  /// No description provided for @please_select_rating.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك اختر تقييماً'**
  String get please_select_rating;

  /// No description provided for @package_weight.
  ///
  /// In ar, this message translates to:
  /// **'وزن العبوة'**
  String get package_weight;

  /// No description provided for @return_reason_is_required.
  ///
  /// In ar, this message translates to:
  /// **'سبب الإرجاع مطلوب'**
  String get return_reason_is_required;

  /// No description provided for @please_add_at_least_one_image.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك أضف صورة واحدة على الأقل'**
  String get please_add_at_least_one_image;

  /// No description provided for @choose_a_product.
  ///
  /// In ar, this message translates to:
  /// **'اختر منتجاً'**
  String get choose_a_product;

  /// No description provided for @please_select_a_product.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك اختر منتجاً'**
  String get please_select_a_product;

  /// No description provided for @return_request_sent_successfully.
  ///
  /// In ar, this message translates to:
  /// **'تم إرسال طلب الإرجاع بنجاح'**
  String get return_request_sent_successfully;

  /// No description provided for @wrong_product_received.
  ///
  /// In ar, this message translates to:
  /// **'استلمت منتجاً خطأً'**
  String get wrong_product_received;

  /// No description provided for @damaged_product.
  ///
  /// In ar, this message translates to:
  /// **'المنتج تالف'**
  String get damaged_product;

  /// No description provided for @quality_issue.
  ///
  /// In ar, this message translates to:
  /// **'مشكلة خاصة بالجودة'**
  String get quality_issue;

  /// No description provided for @expired_product.
  ///
  /// In ar, this message translates to:
  /// **'المنتج منتهي الصلاحية'**
  String get expired_product;

  /// No description provided for @cancellation_reason_is_required.
  ///
  /// In ar, this message translates to:
  /// **'سبب الإلغاء مطلوب'**
  String get cancellation_reason_is_required;

  /// No description provided for @order_cancelled_successfully.
  ///
  /// In ar, this message translates to:
  /// **'تم إلغاء الطلب بنجاح'**
  String get order_cancelled_successfully;

  /// No description provided for @please_select_a_payment_method.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك اختر طريقة للدفع'**
  String get please_select_a_payment_method;

  /// No description provided for @please_select_a_card_for_payment.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك اختر بطاقة للدفع'**
  String get please_select_a_card_for_payment;

  /// No description provided for @please_select_a_delivery_location.
  ///
  /// In ar, this message translates to:
  /// **'من فضلك اختر عنواناً للتوصيل'**
  String get please_select_a_delivery_location;

  /// No description provided for @product_added_to_fav.
  ///
  /// In ar, this message translates to:
  /// **'تم إضافة المنتج للمفضلة'**
  String get product_added_to_fav;

  /// No description provided for @product_removed_from_fav.
  ///
  /// In ar, this message translates to:
  /// **'تم إزالة المنتج من المفضلة'**
  String get product_removed_from_fav;

  /// No description provided for @selectedLocation.
  ///
  /// In ar, this message translates to:
  /// **'الموقع المحدد'**
  String get selectedLocation;

  /// No description provided for @location_from_link.
  ///
  /// In ar, this message translates to:
  /// **'الموقع المحدد من الرابط'**
  String get location_from_link;

  /// No description provided for @product_added_to_cart_successfully.
  ///
  /// In ar, this message translates to:
  /// **'تم إضافة المنتج لعربة التسوق بنجاح'**
  String get product_added_to_cart_successfully;

  /// No description provided for @looks_like_your_email_is_not_verified.
  ///
  /// In ar, this message translates to:
  /// **'يبدو أن بريدك الإلكتروني غير موثق'**
  String get looks_like_your_email_is_not_verified;

  /// No description provided for @to_continue_please_verify_your_email_first.
  ///
  /// In ar, this message translates to:
  /// **'للاستمرار من فضلك وثق بريدك الإلكتروني أولاً'**
  String get to_continue_please_verify_your_email_first;

  /// No description provided for @verify_email.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد البريد الإلكتروني'**
  String get verify_email;

  /// No description provided for @email_confirmation.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد البريد الإلكتروني'**
  String get email_confirmation;

  /// No description provided for @code_resent_successfully.
  ///
  /// In ar, this message translates to:
  /// **'تم إعادة إرسال الرمز بنجاح'**
  String get code_resent_successfully;

  /// No description provided for @email_verification.
  ///
  /// In ar, this message translates to:
  /// **'توثيق البريد الإلكتروني'**
  String get email_verification;

  /// No description provided for @verify_email_to_access_exclusive_deals.
  ///
  /// In ar, this message translates to:
  /// **'وثق بريدك الإلكتروني الآن لتستمتع بأفضل العروض'**
  String get verify_email_to_access_exclusive_deals;

  /// No description provided for @no_internet_connection.
  ///
  /// In ar, this message translates to:
  /// **'لا يوجد اتصال بالإنترنت حاول مجددًا'**
  String get no_internet_connection;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
          'an issue with the localizations generation tool. Please file an issue '
          'on GitHub with a reproducible sample app and the gen-l10n configuration '
          'that was used.'
  );
}
