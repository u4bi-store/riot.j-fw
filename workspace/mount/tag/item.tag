<item>
  <!-- 이렇게 넘겨받은 데이터는 스크립트내부나 html에서 opts객체로 사용 가능함 -->
  
  <p> {opts.title } </p>
  <p> {title } </p>
  <script>
    
    this.title = opts.title; /* options in html */
    
  </script>
  
</item>