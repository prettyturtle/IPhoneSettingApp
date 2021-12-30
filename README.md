# 아이폰 기본 설정 앱 클론
## (UITableView & UISearchController & MVP 패턴 연습)

### 설명
- 테이블 뷰의 스타일: `insetGrouped`
- UISearchController도 네비게이션에 추가
- UI를 MVP 패턴으로 SnapKit을 사용하여 구현
- 아이콘은 따로 넣지 않았음

### 중요
1. 셀
    - 설정 앱의 첫번째 섹션을 보면
    - 크고 사진도 있다
        ![](/IPhoneSettingApp/imgs/img1.PNG)
    - 하지만 이 부분을 커스텀으로 만들어야할지
    - 아니면 기본 셀로도 만들수 있는 건지 잘 모르겠다
1. 셀 속성
    - `cellForRowAt`에서 셀을 리턴하는 코드를 보면
    - 셀을 꾸밀 때의 속성을 두가지로 해봤다
    - 애플 공식문서에는 cell의 imageView를 더이상 사용하지 않음(Deprecated) 라고 명시되어있다
        - ios 3.0 ~ 14.0 까지는 쓸 수 있다


### 이미지
![](/IPhoneSettingApp/imgs/img2.png)
![](/IPhoneSettingApp/imgs/img3.png)
