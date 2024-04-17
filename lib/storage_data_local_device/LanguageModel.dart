/*
 * +-------------------------------------------------------+
 * | NAME  : PHO KHAING                                    |
 * | EMAIL : khaing.pho@ftbbank.com                        |
 * | DUTY  : FTB BANK (HEAD OFFICE)                        |
 * | ROLE  : Full-Stack Software Developer                 |
 * +-------------------------------------------------------+
 * | Copyright (c) 2023                                    |
 * | Released 23.3.2023                                    |
 * +-------------------------------------------------------+
 */
Map<String, dynamic> languages = {
  "english": Language(),
  "khmer": Khmer(),
  "chinese": Chinese(),
};

class Language {
  String get appName => "State Page";
  String get detailPage => "Detail Page";
  String get home => "Home";
  String get themeColor => "Theme Color";
  String get changeToDarkMode => "Change To Dark";
  String get changeToLightMode => "Change To Light";
  String get changeToSystemMode => "Change To System";
  String get language => "Language";
  String get changeToEnglish => "Change To English";
  String get changeToKhmer => "Change To Khmer";
  String get langName => "Languages";
  String get langKh => "Khmer";
  String get langEn => "English";
  String get langCh => "Chinese";
}

class Khmer implements Language {
  String get appName => "កម្មវិធីខ្មែរ";
  String get detailPage => "ទំព័រលំអិត";
  String get home => "ទំព័រដើម";
  String get themeColor => "ពន្លឺ";
  String get changeToDarkMode => "ប្តូរទៅងងឹត";
  String get changeToLightMode => "ប្តូរទៅភ្លឺ";
  String get changeToSystemMode => "ប្តូរតាមប្រព័ន្ធ";
  String get language => "ភាសា";
  String get changeToEnglish => "ប្តូរទៅអង់គ្លេស";
  String get changeToKhmer => "ប្តូរទៅខ្មែរ";
  String get langName => "ភាសា";
  String get langKh => "ភាសាខ្មែរ";
  String get langEn => "ភាសាអង់គ្លេស";
  String get langCh => "ភាសាចិន";
}

class Chinese implements Language {
  String get appName => "应用名称";
  String get detailPage => "详情页";
  String get home => "家";
  String get themeColor => "颜色";
  String get changeToDarkMode => "黑暗的";
  String get changeToLightMode => "光";
  String get changeToSystemMode => "系统模式";
  String get language => "语言";
  String get changeToEnglish => "改成英文";
  String get changeToKhmer => "换成高棉语";
  String get langName => "语言";
  String get langKh => "高棉语";
  String get langEn => "英语";
  String get langCh => "中国人";
}
