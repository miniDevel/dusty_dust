import 'package:dusty_dust/component/card_title.dart';
import 'package:dusty_dust/component/main_card.dart';
import 'package:dusty_dust/component/main_stat.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: MainCard(
        // LayoutBuilder가 차지하는 기준으로 constraint에 최소크기 최대크기를 받을수 있음
        // 찾고싶은 위젯 바로 위에 써줘야 가능함
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardTitle(title: '종류별 통계',),
              //리스트뷰 위젯들은 Colum 안에서 무조건 Expanded를 해줘야함..
              Expanded(
                child: ListView(
                  //리스트뷰의 스크롤 방향을 정하는 방법
                  scrollDirection: Axis.horizontal,
                  //리스트뷰에서 조금만 넘겨도 한페이지가 넘어가는 방법
                  physics: PageScrollPhysics(),
                  children: List.generate(
                    20,
                    (index) => MainStat(
                      width: constraint.maxWidth / 3,
                      category: '미세먼지$index',
                      imgPath: 'asset/img/best.png',
                      level: '최고',
                      stat: '0㎍/㎥',
                    ),
                  ),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
