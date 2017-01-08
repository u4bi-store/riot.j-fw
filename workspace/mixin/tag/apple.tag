<apple>
  <p>{ apple }</p>
  <p>{ orange[0] }{ orange[1] }{ orange[2] }{ orange[3] }{ orange[4] }{ orange[5] }</p>
  
  <script>
    this.apple = 'apple';
    
    console.log(box);
    console.log(this.mixin('boxname'));
    console.log(this.mixin('optsMixin'));
    
    
    OptsMixin.test();
    this.mixin('optsMixin').test();  /* 함수 호출 테스트 */
    
    console.log(OptsMixin.get()); /* opts 접근 불가능 */
    console.log(this.mixin('optsMixin').get()); /* opts 접근 가능 */
    
    
    this.orange = this.mixin('orange');
    /* <orange> 태그내 정의된 orange를 객체로 가져와 쓸 수 있음
    */
  </script>
</apple>