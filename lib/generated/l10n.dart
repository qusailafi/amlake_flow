// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Mtube`
  String get app_name {
    return Intl.message('Mtube', name: 'app_name', desc: '', args: []);
  }

  /// `Change Language`
  String get change_language {
    return Intl.message(
      'Change Language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Videos`
  String get videos {
    return Intl.message('Videos', name: 'videos', desc: '', args: []);
  }

  /// `LogOut`
  String get log_out {
    return Intl.message('LogOut', name: 'log_out', desc: '', args: []);
  }

  /// `Please check your connection`
  String get no_internet {
    return Intl.message(
      'Please check your connection',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `No Data Found`
  String get not_found_api {
    return Intl.message(
      'No Data Found',
      name: 'not_found_api',
      desc: '',
      args: [],
    );
  }

  /// `Videos`
  String get popular_videos {
    return Intl.message('Videos', name: 'popular_videos', desc: '', args: []);
  }

  /// `Reels`
  String get reels {
    return Intl.message('Reels', name: 'reels', desc: '', args: []);
  }

  /// `Search`
  String get search {
    return Intl.message('Search', name: 'search', desc: '', args: []);
  }

  /// `Related Videos`
  String get related_videos {
    return Intl.message(
      'Related Videos',
      name: 'related_videos',
      desc: '',
      args: [],
    );
  }

  /// `Favourite`
  String get favourite {
    return Intl.message('Favourite', name: 'favourite', desc: '', args: []);
  }

  /// `Failed connect to server please try later`
  String get general_error {
    return Intl.message(
      'Failed connect to server please try later',
      name: 'general_error',
      desc: '',
      args: [],
    );
  }

  /// `Intrested-`
  String get inters_non {
    return Intl.message('Intrested-', name: 'inters_non', desc: '', args: []);
  }

  /// `non-Intrested`
  String get non_intersted {
    return Intl.message(
      'non-Intrested',
      name: 'non_intersted',
      desc: '',
      args: [],
    );
  }

  /// `PrivacyPolicy`
  String get privacy_policy {
    return Intl.message(
      'PrivacyPolicy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Send Suggestion`
  String get feed_back {
    return Intl.message(
      'Send Suggestion',
      name: 'feed_back',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Reset`
  String get reset {
    return Intl.message('Reset', name: 'reset', desc: '', args: []);
  }

  /// `Intrested-non-Intrested`
  String get inters_non_lable {
    return Intl.message(
      'Intrested-non-Intrested',
      name: 'inters_non_lable',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message('Arabic', name: 'arabic', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Close`
  String get close {
    return Intl.message('Close', name: 'close', desc: '', args: []);
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Continue As Guest`
  String get continue_guest {
    return Intl.message(
      'Continue As Guest',
      name: 'continue_guest',
      desc: '',
      args: [],
    );
  }

  /// `Busniess Account`
  String get business_account {
    return Intl.message(
      'Busniess Account',
      name: 'business_account',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Mobile`
  String get mobile {
    return Intl.message('Mobile', name: 'mobile', desc: '', args: []);
  }

  /// `Remember me`
  String get remmber_me {
    return Intl.message('Remember me', name: 'remmber_me', desc: '', args: []);
  }

  /// `Forget Password?`
  String get for_get_pass {
    return Intl.message(
      'Forget Password?',
      name: 'for_get_pass',
      desc: '',
      args: [],
    );
  }

  /// `FullName`
  String get full_name {
    return Intl.message('FullName', name: 'full_name', desc: '', args: []);
  }

  /// `Adress`
  String get adress {
    return Intl.message('Adress', name: 'adress', desc: '', args: []);
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `All Fileds Required`
  String get fill_all_filed {
    return Intl.message(
      'All Fileds Required',
      name: 'fill_all_filed',
      desc: '',
      args: [],
    );
  }

  /// `National Number`
  String get national_number {
    return Intl.message(
      'National Number',
      name: 'national_number',
      desc: '',
      args: [],
    );
  }

  /// `Doctor Results`
  String get doctor_results {
    return Intl.message(
      'Doctor Results',
      name: 'doctor_results',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your National number`
  String get enter_national_number {
    return Intl.message(
      'Enter Your National number',
      name: 'enter_national_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your mobile number`
  String get enter_mobile_number {
    return Intl.message(
      'Enter Your mobile number',
      name: 'enter_mobile_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your full name`
  String get enter_full_name {
    return Intl.message(
      'Enter Your full name',
      name: 'enter_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your adress`
  String get enter_adress {
    return Intl.message(
      'Enter Your adress',
      name: 'enter_adress',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your password`
  String get enter_password {
    return Intl.message(
      'Enter Your password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Select Test Result Date`
  String get select_test_date {
    return Intl.message(
      'Select Test Result Date',
      name: 'select_test_date',
      desc: '',
      args: [],
    );
  }

  /// `Test Result`
  String get test_result {
    return Intl.message('Test Result', name: 'test_result', desc: '', args: []);
  }

  /// `Gender`
  String get gender {
    return Intl.message('Gender', name: 'gender', desc: '', args: []);
  }

  /// `BirthDate`
  String get birth_date {
    return Intl.message('BirthDate', name: 'birth_date', desc: '', args: []);
  }

  /// `Email`
  String get enter_email {
    return Intl.message('Email', name: 'enter_email', desc: '', args: []);
  }

  /// `Test Results`
  String get test_results {
    return Intl.message(
      'Test Results',
      name: 'test_results',
      desc: '',
      args: [],
    );
  }

  /// `Dr Results`
  String get dr_results {
    return Intl.message('Dr Results', name: 'dr_results', desc: '', args: []);
  }

  /// `Invoices`
  String get invoices {
    return Intl.message('Invoices', name: 'invoices', desc: '', args: []);
  }

  /// `Patient Visits`
  String get patient_visits {
    return Intl.message(
      'Patient Visits',
      name: 'patient_visits',
      desc: '',
      args: [],
    );
  }

  /// `Welcome!`
  String get welcome {
    return Intl.message('Welcome!', name: 'welcome', desc: '', args: []);
  }

  /// `ChangeLanguage`
  String get change_lang {
    return Intl.message(
      'ChangeLanguage',
      name: 'change_lang',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `price`
  String get price {
    return Intl.message('price', name: 'price', desc: '', args: []);
  }

  /// `Login Required`
  String get login_required_title {
    return Intl.message(
      'Login Required',
      name: 'login_required_title',
      desc: '',
      args: [],
    );
  }

  /// `To see the service details, please log in to your account`
  String get login_required_msg {
    return Intl.message(
      'To see the service details, please log in to your account',
      name: 'login_required_msg',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get first_name {
    return Intl.message('First Name', name: 'first_name', desc: '', args: []);
  }

  /// `Last Name`
  String get last_name {
    return Intl.message('Last Name', name: 'last_name', desc: '', args: []);
  }

  /// `Phone Number`
  String get phone {
    return Intl.message('Phone Number', name: 'phone', desc: '', args: []);
  }

  /// `Email Address`
  String get email {
    return Intl.message('Email Address', name: 'email', desc: '', args: []);
  }

  /// `Send Email verification code`
  String get send_email {
    return Intl.message(
      'Send Email verification code',
      name: 'send_email',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Verify your Email`
  String get verify_mail {
    return Intl.message(
      'Verify your Email',
      name: 'verify_mail',
      desc: '',
      args: [],
    );
  }

  /// `Lets get you back in!Enter your email and we will send you code to reset your password`
  String get verify_mail_desc {
    return Intl.message(
      'Lets get you back in!Enter your email and we will send you code to reset your password',
      name: 'verify_mail_desc',
      desc: '',
      args: [],
    );
  }

  /// `Send verification code`
  String get send_verification_code {
    return Intl.message(
      'Send verification code',
      name: 'send_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continues {
    return Intl.message('Continue', name: 'continues', desc: '', args: []);
  }

  /// `Email or mobile no..`
  String get email_mob {
    return Intl.message(
      'Email or mobile no..',
      name: 'email_mob',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back!`
  String get welcome_back {
    return Intl.message(
      'Welcome back!',
      name: 'welcome_back',
      desc: '',
      args: [],
    );
  }

  /// `Glad to see you again! Please, enter your registered email or phone number.`
  String get login_glad {
    return Intl.message(
      'Glad to see you again! Please, enter your registered email or phone number.',
      name: 'login_glad',
      desc: '',
      args: [],
    );
  }

  /// `Enter Verification Code`
  String get enter_code {
    return Intl.message(
      'Enter Verification Code',
      name: 'enter_code',
      desc: '',
      args: [],
    );
  }

  /// `We’ve sent a 6-digit code to your Email.`
  String get we_have_sent_code {
    return Intl.message(
      'We’ve sent a 6-digit code to your Email.',
      name: 'we_have_sent_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Verification Email`
  String get verification_screen {
    return Intl.message(
      'Verification Email',
      name: 'verification_screen',
      desc: '',
      args: [],
    );
  }

  /// `Email required`
  String get email_required {
    return Intl.message(
      'Email required',
      name: 'email_required',
      desc: '',
      args: [],
    );
  }

  /// `Verification code`
  String get verification_code {
    return Intl.message(
      'Verification code',
      name: 'verification_code',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_pass {
    return Intl.message('New Password', name: 'new_pass', desc: '', args: []);
  }

  /// `Reset Password`
  String get reset_password {
    return Intl.message(
      'Reset Password',
      name: 'reset_password',
      desc: '',
      args: [],
    );
  }

  /// `The password and confirm password dosenot mattch`
  String get pass_confi_deff {
    return Intl.message(
      'The password and confirm password dosenot mattch',
      name: 'pass_confi_deff',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_pass {
    return Intl.message(
      'Change Password',
      name: 'change_pass',
      desc: '',
      args: [],
    );
  }

  /// `Current Password`
  String get current_pass {
    return Intl.message(
      'Current Password',
      name: 'current_pass',
      desc: '',
      args: [],
    );
  }

  /// `Total Investment`
  String get total_investment {
    return Intl.message(
      'Total Investment',
      name: 'total_investment',
      desc: '',
      args: [],
    );
  }

  /// `Total Shares`
  String get totsl_share {
    return Intl.message(
      'Total Shares',
      name: 'totsl_share',
      desc: '',
      args: [],
    );
  }

  /// `shares Sold`
  String get share_sold {
    return Intl.message('shares Sold', name: 'share_sold', desc: '', args: []);
  }

  /// `Price PerShare`
  String get price_per_hare {
    return Intl.message(
      'Price PerShare',
      name: 'price_per_hare',
      desc: '',
      args: [],
    );
  }

  /// `Shares Available for Investment`
  String get avilable_shares {
    return Intl.message(
      'Shares Available for Investment',
      name: 'avilable_shares',
      desc: '',
      args: [],
    );
  }

  /// `Sorry, you need to log in to use the app.`
  String get login_required {
    return Intl.message(
      'Sorry, you need to log in to use the app.',
      name: 'login_required',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message('Resend', name: 'resend', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `TotalPortfolioValue`
  String get total_profolio {
    return Intl.message(
      'TotalPortfolioValue',
      name: 'total_profolio',
      desc: '',
      args: [],
    );
  }

  /// `TotalInvested`
  String get totalInvested {
    return Intl.message(
      'TotalInvested',
      name: 'totalInvested',
      desc: '',
      args: [],
    );
  }

  /// `UnrealisedAppreciation`
  String get unrealisedAppreciation {
    return Intl.message(
      'UnrealisedAppreciation',
      name: 'unrealisedAppreciation',
      desc: '',
      args: [],
    );
  }

  /// `TotalRentalIncome`
  String get totalRentalIncome {
    return Intl.message(
      'TotalRentalIncome',
      name: 'totalRentalIncome',
      desc: '',
      args: [],
    );
  }

  /// `Roi`
  String get roi {
    return Intl.message('Roi', name: 'roi', desc: '', args: []);
  }

  /// `AnnualisedRentalReturn`
  String get annualisedRentalReturn {
    return Intl.message(
      'AnnualisedRentalReturn',
      name: 'annualisedRentalReturn',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message('Open', name: 'open', desc: '', args: []);
  }

  /// `Funded`
  String get funed {
    return Intl.message('Funded', name: 'funed', desc: '', args: []);
  }

  /// `No Properites avilable`
  String get no_properites {
    return Intl.message(
      'No Properites avilable',
      name: 'no_properites',
      desc: '',
      args: [],
    );
  }

  /// `AED`
  String get aed {
    return Intl.message('AED', name: 'aed', desc: '', args: []);
  }

  /// `Rooms`
  String get rooms {
    return Intl.message('Rooms', name: 'rooms', desc: '', args: []);
  }

  /// `BathRooms`
  String get bath_rooms {
    return Intl.message('BathRooms', name: 'bath_rooms', desc: '', args: []);
  }

  /// `Area`
  String get area {
    return Intl.message('Area', name: 'area', desc: '', args: []);
  }

  /// `Invest Now`
  String get pay {
    return Intl.message('Invest Now', name: 'pay', desc: '', args: []);
  }

  /// `How much do you want to invest?`
  String get how_much_invest {
    return Intl.message(
      'How much do you want to invest?',
      name: 'how_much_invest',
      desc: '',
      args: [],
    );
  }

  /// `Select Invest`
  String get select_invest {
    return Intl.message(
      'Select Invest',
      name: 'select_invest',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Payment Method`
  String get payment_method {
    return Intl.message(
      'Payment Method',
      name: 'payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Payment Sucessfully`
  String get payment_sucessfully {
    return Intl.message(
      'Payment Sucessfully',
      name: 'payment_sucessfully',
      desc: '',
      args: [],
    );
  }

  /// `No Data Found`
  String get nodatad_fount {
    return Intl.message(
      'No Data Found',
      name: 'nodatad_fount',
      desc: '',
      args: [],
    );
  }

  /// `Bank Information`
  String get bank_info {
    return Intl.message(
      'Bank Information',
      name: 'bank_info',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get bank_name {
    return Intl.message('Bank Name', name: 'bank_name', desc: '', args: []);
  }

  /// `Account Name`
  String get account_name {
    return Intl.message(
      'Account Name',
      name: 'account_name',
      desc: '',
      args: [],
    );
  }

  /// `Book`
  String get book_invensment {
    return Intl.message('Book', name: 'book_invensment', desc: '', args: []);
  }

  /// `No Accounts Avilable`
  String get no_account {
    return Intl.message(
      'No Accounts Avilable',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `My investments`
  String get my_invensments {
    return Intl.message(
      'My investments',
      name: 'my_invensments',
      desc: '',
      args: [],
    );
  }

  /// `Properites`
  String get properites {
    return Intl.message('Properites', name: 'properites', desc: '', args: []);
  }

  /// `Wallet`
  String get walet {
    return Intl.message('Wallet', name: 'walet', desc: '', args: []);
  }

  /// `We Find the property`
  String get found_property {
    return Intl.message(
      'We Find the property',
      name: 'found_property',
      desc: '',
      args: [],
    );
  }

  /// `Best rental properites,handpicked by our experts.`
  String get find_desc {
    return Intl.message(
      'Best rental properites,handpicked by our experts.',
      name: 'find_desc',
      desc: '',
      args: [],
    );
  }

  /// `You invest along with others.`
  String get invest_long {
    return Intl.message(
      'You invest along with others.',
      name: 'invest_long',
      desc: '',
      args: [],
    );
  }

  /// `Buy fractions of property in just few taps.`
  String get invest_long_desc {
    return Intl.message(
      'Buy fractions of property in just few taps.',
      name: 'invest_long_desc',
      desc: '',
      args: [],
    );
  }

  /// `We set up the SPV`
  String get setup_spv {
    return Intl.message(
      'We set up the SPV',
      name: 'setup_spv',
      desc: '',
      args: [],
    );
  }

  /// `Your shares are allocated and ownership certificates issued.`
  String get setup_spv_desc {
    return Intl.message(
      'Your shares are allocated and ownership certificates issued.',
      name: 'setup_spv_desc',
      desc: '',
      args: [],
    );
  }

  /// `Property is transferred`
  String get property_trnsfare {
    return Intl.message(
      'Property is transferred',
      name: 'property_trnsfare',
      desc: '',
      args: [],
    );
  }

  /// `The property is transferredfrom seller to the spv.`
  String get property_trnsfare_desc {
    return Intl.message(
      'The property is transferredfrom seller to the spv.',
      name: 'property_trnsfare_desc',
      desc: '',
      args: [],
    );
  }

  /// `You earn  monthly rental income.`
  String get earn_monthly {
    return Intl.message(
      'You earn  monthly rental income.',
      name: 'earn_monthly',
      desc: '',
      args: [],
    );
  }

  /// `The passive income is deposited straight into your wallet.`
  String get earn_monthly_desc {
    return Intl.message(
      'The passive income is deposited straight into your wallet.',
      name: 'earn_monthly_desc',
      desc: '',
      args: [],
    );
  }

  /// `What's the process?`
  String get whats_process {
    return Intl.message(
      'What\'s the process?',
      name: 'whats_process',
      desc: '',
      args: [],
    );
  }

  /// `Why invest in this property?`
  String get why_invest_property {
    return Intl.message(
      'Why invest in this property?',
      name: 'why_invest_property',
      desc: '',
      args: [],
    );
  }

  /// `Modern Marina Living`
  String get modern_marina {
    return Intl.message(
      'Modern Marina Living',
      name: 'modern_marina',
      desc: '',
      args: [],
    );
  }

  /// `West Avenue in Dubai Marina offers fully furnished studio apartments with modern finishes, set within one of Dubai's most prestigious waterfront communities with seamless connectivity to the city's hotspots.`
  String get modern_marena_desc {
    return Intl.message(
      'West Avenue in Dubai Marina offers fully furnished studio apartments with modern finishes, set within one of Dubai\'s most prestigious waterfront communities with seamless connectivity to the city\'s hotspots.',
      name: 'modern_marena_desc',
      desc: '',
      args: [],
    );
  }

  /// `Strong Rental Appeal`
  String get strong_rental_appeal {
    return Intl.message(
      'Strong Rental Appeal',
      name: 'strong_rental_appeal',
      desc: '',
      args: [],
    );
  }

  /// `This 6th floor studio with a Sheikh Zayed Road view and balcony is currently rented at AED 65,000 for 8 months starting September 2025, ensuring immediate income and reliable occupancy.`
  String get strong_rental_desc {
    return Intl.message(
      'This 6th floor studio with a Sheikh Zayed Road view and balcony is currently rented at AED 65,000 for 8 months starting September 2025, ensuring immediate income and reliable occupancy.',
      name: 'strong_rental_desc',
      desc: '',
      args: [],
    );
  }

  /// `Premium Facilities`
  String get premiuem_faciles {
    return Intl.message(
      'Premium Facilities',
      name: 'premiuem_faciles',
      desc: '',
      args: [],
    );
  }

  /// `Residents enjoy a swimming pool, gymnasium, concierge services, and dedicated parking, enhanced by Dubai Marina's wider offerings including malls, tram links, supermarkets, retail, and diverse dining venues\nAttractive Investment Returns\nThe unit delivers a net rental yield of 6% in the first year and a projected annualized ROl of 10.08% over five years, combining steady rental income with strong capital growth potential.`
  String get premiuem_fciltes_desc {
    return Intl.message(
      'Residents enjoy a swimming pool, gymnasium, concierge services, and dedicated parking, enhanced by Dubai Marina\'s wider offerings including malls, tram links, supermarkets, retail, and diverse dining venues\nAttractive Investment Returns\nThe unit delivers a net rental yield of 6% in the first year and a projected annualized ROl of 10.08% over five years, combining steady rental income with strong capital growth potential.',
      name: 'premiuem_fciltes_desc',
      desc: '',
      args: [],
    );
  }

  /// `Below Market Value`
  String get market_value {
    return Intl.message(
      'Below Market Value',
      name: 'market_value',
      desc: '',
      args: [],
    );
  }

  /// `Priced at AED 1,100,000, the property is approximately 4.52% below the estimated AED 1,152,026 third-party valuation, with an instant estimated appreciation of 4.74%, offering investors immediate equity gain.`
  String get market_value_desc {
    return Intl.message(
      'Priced at AED 1,100,000, the property is approximately 4.52% below the estimated AED 1,152,026 third-party valuation, with an instant estimated appreciation of 4.74%, offering investors immediate equity gain.',
      name: 'market_value_desc',
      desc: '',
      args: [],
    );
  }

  /// `Prime Location`
  String get prime_location {
    return Intl.message(
      'Prime Location',
      name: 'prime_location',
      desc: '',
      args: [],
    );
  }

  /// `Situated in the heart of Dubai Marina with direct access to Sheikh Zayed Road, tram, and surrounding retail, residents benefit from world-class convenience and an iconic waterfront lifestyle.`
  String get prime_location_desc {
    return Intl.message(
      'Situated in the heart of Dubai Marina with direct access to Sheikh Zayed Road, tram, and surrounding retail, residents benefit from world-class convenience and an iconic waterfront lifestyle.',
      name: 'prime_location_desc',
      desc: '',
      args: [],
    );
  }

  /// `Bank Reference Id`
  String get bank_ref_id {
    return Intl.message(
      'Bank Reference Id',
      name: 'bank_ref_id',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message('Camera', name: 'camera', desc: '', args: []);
  }

  /// `Gallery`
  String get gallery {
    return Intl.message('Gallery', name: 'gallery', desc: '', args: []);
  }

  /// `Upload your Passport`
  String get upload_passport {
    return Intl.message(
      'Upload your Passport',
      name: 'upload_passport',
      desc: '',
      args: [],
    );
  }

  /// `Your passport`
  String get your_passport {
    return Intl.message(
      'Your passport',
      name: 'your_passport',
      desc: '',
      args: [],
    );
  }

  /// `Select Category`
  String get select_category {
    return Intl.message(
      'Select Category',
      name: 'select_category',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message('Ok', name: 'ok', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Bank Transfer`
  String get bank_transfare {
    return Intl.message(
      'Bank Transfer',
      name: 'bank_transfare',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get credit_card {
    return Intl.message('Credit Card', name: 'credit_card', desc: '', args: []);
  }

  /// `Invenstments Summary`
  String get invenstment_summary {
    return Intl.message(
      'Invenstments Summary',
      name: 'invenstment_summary',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get delete_account {
    return Intl.message(
      'Delete Account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Passport (Optional – only required for special services`
  String get pasport {
    return Intl.message(
      'Passport (Optional – only required for special services',
      name: 'pasport',
      desc: '',
      args: [],
    );
  }

  /// `Check UserName and password please`
  String get check_user_name {
    return Intl.message(
      'Check UserName and password please',
      name: 'check_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message('Contact Us', name: 'contact_us', desc: '', args: []);
  }

  /// `Subject`
  String get subject {
    return Intl.message('Subject', name: 'subject', desc: '', args: []);
  }

  /// `Message`
  String get message {
    return Intl.message('Message', name: 'message', desc: '', args: []);
  }

  /// `Dreams`
  String get dreams {
    return Intl.message('Dreams', name: 'dreams', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
