Scenario Outline: 집에 가고 싶다
  Given 나는 생각을 할 수 있고
  And 집이 있다
  When "<어떤 장소>"에 있을 때
  Then 집에 가고 싶다
  
  Examples:
    | 어떤 장소 |
    | 학교     |
    | 학원     |
    | 회사     |
    | 연구실   |
    | 과사     |
    | 동방     |
    | 마트     |
    | 집 밖    |
    | 심지어 집 |
