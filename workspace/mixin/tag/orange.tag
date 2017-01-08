<orange>
  <p>{ orange }</p>
  
  <script>
    this.orange = 'orange';
  
    console.log(box);
    console.log(this.mixin('boxname')[0]);
    console.log(this.mixin('boxname')[1]);
    console.log(this.mixin('boxname')[2]);
    console.log(this.mixin('boxname')[3]);
    
    console.log(OptsMixin.get()); /* opts 접근 불가능 */
    console.log(this.mixin('optsMixin').get()); /* opts 접근 가능 */
    
    
    
    riot.mixin('orange', this.orange);
    /* 이렇게 믹스인은 태그를 확장하기도하고 반복되는 작업을 위해 믹스인을 공유할수 있게 해줌
    */
    
  </script>
</orange>