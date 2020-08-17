# IBM 1401 Machine Code
- GOHOME.CRD: 직접 작성한 기계어 코드
- GOHOME.png: 위 기계어 코드를 IBM 1401에서 사용가능한 천공카드로 옮긴 이미지

# Execution
1. IBM 1401, 1402, 1403, 천공카드 1개를 준비합니다. 선택적으로 24/26 키펀치를 준비합니다.
2. [키펀치](https://en.wikipedia.org/wiki/Keypunch)를 사용해 GOHOME.CRD의 내용을 직접 입력하거나, png를 인쇄한 뒤(300dpi) 직접 구멍을 뚫어 git clone 해옵니다. 자세한 사용 방법은 [IBM 24/26 키펀치 레퍼런스 매뉴얼](http://www.bitsavers.org/pdf/ibm/punchedCard/Keypunch/A24-0520-2_24-26_Keypunches.pdf)를 참고하십시오.
3. [IBM 1402](http://bitsavers.org/pdf/ibm/1402/A24-3072-2_1402_Card_Read-Punch.pdf) 측면의 Read Hopper에 위에서 만든 카드 한장을 넣습니다.
4. [1401 컨트롤 패널](https://upload.wikimedia.org/wikipedia/commons/4/4d/IBM_1401_Control_Panel.jpg)에 가서 스위치 A를 켭니다. 이 스위치 A는 IBM 1402에 넣은 카드가 마지막 카드라는 걸 알리는 역할을 합니다.
5. 1402 컨트롤 패널의 LOAD 버튼을 눌러 천공카드의 내용을 1401 메모리 영역 001-080에 로드합니다.
6. 1401 컨트롤 패널의 START 버튼을 눌러 프로그램을 실행합니다.
7. 프린터 1403이 "I WANT TO GO HOME"을 출력합니다.

# Disclamer
이 프로그램은 실행과정 단순화를 위해 천공카드 하나에 쑤셔넣기 위해서 프린터 버퍼(201-332)를 초기화하는 과정이 생략되었으며, 때문에 실행시 해당 영역 메모리의 상태에 따라 정상 동작을 보장하지 못할 수 있습니다.
