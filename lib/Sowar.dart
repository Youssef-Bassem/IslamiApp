import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'appprovider.dart';
import 'suracontent.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Quran extends StatelessWidget {
  late AppProvider provider;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<AppProvider>(context);
    String path='Quran/';

    return  Scaffold(
      body: SafeArea(
        child: Container(
          //margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  provider.isDarkModeEnabled()?
                  "assets/bg.png" : "assets/ahades1.png"
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(0, 22, 20, 0),
                child: Center(child:Text(
                  AppLocalizations.of(context)!.appTitle,
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold
                  ),
                )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Image(
                  image: AssetImage('assets/sowarLogo.png'),
                  width: 150,
                ),
              ),
              Text(AppLocalizations.of(context)!.soraName, style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s2,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفاتحة' , path :path+'1.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s3 ,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البقرة' , path :path+'2.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s4,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'آل عمران' , path :path+'3.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s5,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النساء' , path :path+'4.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s6,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المآئدة' , path :path+'5.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s7,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأنعام' , path :path+'6.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s8,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأعراف' , path :path+'7.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s9,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأنفال' , path :path+'8.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s10,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التوبة' , path :path+'9.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s11,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'يونس' , path :path+'10.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s12,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'هود' , path :path+'11.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s13,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'يوسف' , path :path+'12.txt')));
                      },
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s14,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الرعد' , path :path+'13.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s15,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'إبراهيم' , path :path+'14.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s16,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحجر' , path :path+'15.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s17,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النحل' , path :path+'16.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s18,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإسراء' , path :path+'17.txt')));
                        }
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s19,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الكهف' , path :path+'18.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s20,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'مريم' , path :path+'19.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s21,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'طه' , path :path+'20.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s22,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأنبياء' , path :path+'21.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s23,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحج' , path :path+'22.txt')));
                      },
                    ),
                    TextButton(
                      child: Text(AppLocalizations.of(context)!.s24,style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المؤمنون' , path :path+'23.txt')));
                      },
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s25,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النور' , path :path+'24.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s26,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفرقان' , path :path+'25.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s27,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشعراء' , path :path+'26.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s28,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النمل' , path :path+'27.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s29,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القصص' , path :path+'28.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s30,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العنكبوت' , path :path+'29.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s31,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الروم' , path :path+'30.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s32,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'لقمان' , path :path+'31.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s33,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'السجدة' , path :path+'32.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s34,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأحزاب	' , path :path+'33.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s35,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'سبأ' , path :path+'34.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s36,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'فاطر	' , path :path+'35.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s37,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'يس' , path :path+'36.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s38,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الصافات' , path :path+'37.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s39,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'ص' , path :path+'38.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s40,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الزمر' , path :path+'39.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s41,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'غافر' , path :path+'40.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s42,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'فصلت' , path :path+'41.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s43,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشورى' , path :path+'42.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s44,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الزخرف' , path :path+'43.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s45,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الدخان' , path :path+'44.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s46,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الجاثية' , path :path+'45.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s47,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأحقاف' , path :path+'46.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s48,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'محمد' , path :path+'47.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s49,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفتح' , path :path+'48.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s50,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحجرات' , path :path+'49.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s51,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'ق	' , path :path+'50.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s52,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الذاريات' , path :path+'51.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s53,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الطور' , path :path+'52.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s54,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النجم' , path :path+'53.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s55,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القمر' , path :path+'54.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s56,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الرحمن' , path :path+'55.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s57,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الواقعة' , path :path+'56.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s58,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحديد' , path :path+'57.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s59,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المجادلة' , path :path+'58.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s60,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحشر' , path :path+'59.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s61,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الممتحنة' , path :path+'60.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s62,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الصف' , path :path+'61.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s63,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الجمعة' , path :path+'62.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s64,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المنافقون' , path :path+'63.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s65,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التغابن' , path :path+'64.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s66,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الطلاق' , path :path+'65.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s67,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التحريم' , path :path+'66.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s68,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الملك' , path :path+'67.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s69,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القلم' , path :path+'68.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s70,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحاقة' , path :path+'69.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s71,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المعارج' , path :path+'70.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s72,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'نوح' , path :path+'71.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s73,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الجن' , path :path+'72.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s74,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المزمل' , path :path+'73.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s75,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المدثر' , path :path+'74.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s76,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القيامة' , path :path+'75.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s77,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإنسان' , path :path+'76.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s78,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المرسلات' , path :path+'77.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s79,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النبأ' , path :path+'78.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s80,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النازعات' , path :path+'79.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s81,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'عبس	' , path :path+'80.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s82,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التكوير' , path :path+'81.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s83,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإنفطار' , path :path+'82.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s84,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المطففين' , path :path+'83.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s85,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإنشقاق' , path :path+'84.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s86,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البرج' , path :path+'85.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s87,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الطارق' , path :path+'86.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s88,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأعلى' , path :path+'87.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s89,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الغاشية' , path :path+'88.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s90,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفجر' , path :path+'89.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s91,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البلد' , path :path+'90.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s92,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشمس' , path :path+'91.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s93,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الليل' , path :path+'92.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s94,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الضحى' , path :path+'93.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s95,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشرح' , path :path+'94.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s96,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التين' , path :path+'95.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s97,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العلق' , path :path+'96.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s98,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القدر' , path :path+'97.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s99,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البيِّنة' , path :path+'98.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s100,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الزلزلة' , path :path+'99.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s101,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العاديات' , path :path+'100.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s102,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القارعة' , path :path+'101.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s103,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التكاثر' , path :path+'102.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s104,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العصر' , path :path+'103.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s105,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الهمزة' , path :path+'104.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s106,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفيل' , path :path+'105.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s107,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'قريش' , path :path+'106.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s108,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الكوثر' , path :path+'108.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s109,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الكافرون' , path :path+'109.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s110,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النصر' , path :path+'110.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s111,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المسد' , path :path+'111.txt')));
                        }
                    ),TextButton(
                        child: Text(AppLocalizations.of(context)!.s112,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإخلاص' , path :path+'112.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s113,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفلق' , path :path+'113.txt')));
                        }
                    ),
                    TextButton(
                        child: Text(AppLocalizations.of(context)!.s114,style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الناس' , path :path+'114.txt')));
                        }
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const suraStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);


