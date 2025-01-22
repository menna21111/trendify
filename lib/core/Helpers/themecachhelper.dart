import 'package:trendify/core/Helpers/cache_helper.dart';



class ThemeCachHelper {
  Future<void> saveThemeData(bool isDark) async {
    await CacheHelper().saveData(key: 'isDark', value: isDark);
  }

  Future<bool> getThemeData() async {
    final isDark = await CacheHelper().getData(key: 'isDark');
    if(isDark!=null){
      return isDark;
    }else{

      return false;
    }

  }
}