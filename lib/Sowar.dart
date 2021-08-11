import 'package:flutter/material.dart';
import 'suracontent.dart';

class Quran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String path='Quran/';

    return  Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ahades1.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(child: Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Text('اسم السورة', style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.black54),),
              )) ,
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    TextButton(
                      child: Text('الفاتحة',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفاتحة' , path :path+'1.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('البقرة',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البقرة' , path :path+'2.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('آل عمران   ',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'آل عمران' , path :path+'3.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('النساء',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النساء' , path :path+'4.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('المآئدة',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المآئدة' , path :path+'5.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('الأنعام	',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأنعام' , path :path+'6.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('الأعراف	',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأعراف' , path :path+'7.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('الأنفال  ',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأنفال' , path :path+'8.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('التوبة  ',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التوبة' , path :path+'9.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('يونس',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'يونس' , path :path+'10.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('هود',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'هود' , path :path+'11.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('يوسف',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'يوسف' , path :path+'12.txt')));
                      },
                    ),
                    TextButton(
                        child: Text('الرعد',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الرعد' , path :path+'13.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('إبراهيم',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'إبراهيم' , path :path+'14.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الحجر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحجر' , path :path+'15.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('النحل ',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النحل' , path :path+'16.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الإسراء',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإسراء' , path :path+'17.txt')));
                        }
                    ),
                    TextButton(
                      child: Text('الكهف',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الكهف' , path :path+'18.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('مريم',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'مريم' , path :path+'19.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('طه',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'طه' , path :path+'20.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('الأنبياء',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأنبياء' , path :path+'21.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('الحج',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحج' , path :path+'22.txt')));
                      },
                    ),
                    TextButton(
                      child: Text('المؤمنون',style: suraStyle,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المؤمنون' , path :path+'23.txt')));
                      },
                    ),
                    TextButton(
                        child: Text('النور',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النور' , path :path+'24.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الفرقان',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفرقان' , path :path+'25.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الشعراء',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشعراء' , path :path+'26.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('النمل',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النمل' , path :path+'27.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('القصص',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القصص' , path :path+'28.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('العنكبوت',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العنكبوت' , path :path+'29.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الروم',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الروم' , path :path+'30.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('لقمان',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'لقمان' , path :path+'31.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('السجدة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'السجدة' , path :path+'32.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الأحزاب	',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأحزاب	' , path :path+'33.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('سبأ',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'سبأ' , path :path+'34.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('فاطر	',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'فاطر	' , path :path+'35.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('يس',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'يس' , path :path+'36.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الصافات',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الصافات' , path :path+'37.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('ص',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'ص' , path :path+'38.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الزمر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الزمر' , path :path+'39.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('غافر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'غافر' , path :path+'40.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('فصلت',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'فصلت' , path :path+'41.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الشورى',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشورى' , path :path+'42.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الزخرف',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الزخرف' , path :path+'43.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الدخان',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الدخان' , path :path+'44.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الجاثية',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الجاثية' , path :path+'45.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الأحقاف',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأحقاف' , path :path+'46.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('محمد',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'محمد' , path :path+'47.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الفتح',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفتح' , path :path+'48.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الحجرات',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحجرات' , path :path+'49.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('ق	',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'ق	' , path :path+'50.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الذاريات',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الذاريات' , path :path+'51.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الطور',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الطور' , path :path+'52.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('النجم',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النجم' , path :path+'53.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('القمر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القمر' , path :path+'54.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الرحمن',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الرحمن' , path :path+'55.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الواقعة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الواقعة' , path :path+'56.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الحديد',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحديد' , path :path+'57.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('المجادلة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المجادلة' , path :path+'58.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الحشر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحشر' , path :path+'59.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الممتحنة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الممتحنة' , path :path+'60.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الصف',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الصف' , path :path+'61.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الجمعة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الجمعة' , path :path+'62.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('المنافقون',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المنافقون' , path :path+'63.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('التغابن',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التغابن' , path :path+'64.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الطلاق',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الطلاق' , path :path+'65.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('التحريم',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التحريم' , path :path+'66.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الملك',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الملك' , path :path+'67.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('القلم',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القلم' , path :path+'68.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الحاقة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الحاقة' , path :path+'69.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('المعارج',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المعارج' , path :path+'70.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('نوح',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'نوح' , path :path+'71.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الجن',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الجن' , path :path+'72.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('المزمل',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المزمل' , path :path+'73.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('المدثر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المدثر' , path :path+'74.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('القيامة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القيامة' , path :path+'75.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الإنسان',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإنسان' , path :path+'76.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('المرسلات',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المرسلات' , path :path+'77.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('النبأ',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النبأ' , path :path+'78.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('النازعات',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النازعات' , path :path+'79.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('عبس	',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'عبس	' , path :path+'80.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('التكوير',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التكوير' , path :path+'81.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الإنفطار',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإنفطار' , path :path+'82.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('المطففين',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المطففين' , path :path+'83.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الإنشقاق',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإنشقاق' , path :path+'84.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('البرج',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البرج' , path :path+'85.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الطارق',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الطارق' , path :path+'86.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الأعلى',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الأعلى' , path :path+'87.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الغاشية',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الغاشية' , path :path+'88.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الفجر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفجر' , path :path+'89.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('البلد',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البلد' , path :path+'90.txt')));
                        }
                    ),TextButton(
                        child: Text('الشمس',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشمس' , path :path+'91.txt')));
                        }
                    ),TextButton(
                        child: Text('الليل',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الليل' , path :path+'92.txt')));
                        }
                    ),TextButton(
                        child: Text('الضحى',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الضحى' , path :path+'93.txt')));
                        }
                    ),TextButton(
                        child: Text('الشرح',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الشرح' , path :path+'94.txt')));
                        }
                    ),TextButton(
                        child: Text('التين',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التين' , path :path+'95.txt')));
                        }
                    ),TextButton(
                        child: Text('العلق',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العلق' , path :path+'96.txt')));
                        }
                    ),TextButton(
                        child: Text('القدر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القدر' , path :path+'97.txt')));
                        }
                    ),TextButton(
                        child: Text('البيِّنة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'البيِّنة' , path :path+'98.txt')));
                        }
                    ),TextButton(
                        child: Text('الزلزلة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الزلزلة' , path :path+'99.txt')));
                        }
                    ),TextButton(
                        child: Text('العاديات',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العاديات' , path :path+'100.txt')));
                        }
                    ),TextButton(
                        child: Text('القارعة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'القارعة' , path :path+'101.txt')));
                        }
                    ),TextButton(
                        child: Text('التكاثر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'التكاثر' , path :path+'102.txt')));
                        }
                    ),TextButton(
                        child: Text('العصر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'العصر' , path :path+'103.txt')));
                        }
                    ),TextButton(
                        child: Text('الهمزة',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الهمزة' , path :path+'104.txt')));
                        }
                    ),TextButton(
                        child: Text('الفيل',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفيل' , path :path+'105.txt')));
                        }
                    ),TextButton(
                        child: Text('قريش',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'قريش' , path :path+'106.txt')));
                        }
                    ),TextButton(
                        child: Text('الكوثر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الكوثر' , path :path+'108.txt')));
                        }
                    ),TextButton(
                        child: Text('الكافرون',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الكافرون' , path :path+'109.txt')));
                        }
                    ),TextButton(
                        child: Text('النصر',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'النصر' , path :path+'110.txt')));
                        }
                    ),TextButton(
                        child: Text('المسد',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'المسد' , path :path+'111.txt')));
                        }
                    ),TextButton(
                        child: Text('الإخلاص',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الإخلاص' , path :path+'112.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الفلق',style: suraStyle,),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Suracontent(suraname : 'الفلق' , path :path+'113.txt')));
                        }
                    ),
                    TextButton(
                        child: Text('الناس',style: suraStyle,),
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


