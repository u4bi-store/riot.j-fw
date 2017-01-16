<item>
  <form onsubmit={ submit }>
    <button>폼보내기</button>
  </form>
  
  <form onsubmit={flag ? u4bi_true : u4bi_false}> <!-- 표현식을 사용해 동적으로 핸들러 적용 가능함 -->
    <button>폼보내기2 {flag}</button>
  </form>
  
  <script>
    var self = this; /* 전역선언 */
    
    submit(e){
      self.flag = !self.flag; /* 플래그를 줘 두번째 폼의 표현식을 조정함 */
      
      alert('토클');
      e.preventDefault(); /* 주의점은 Riot.js의 이벤트 핸들러 preventDefault를 호출하여
                             기본 이벤트 호출을 막아주면 좋음 */
    }
    
    /* Riot.js의 일반적인 핸들러 주입 모습임
       on.. 으로 시작하는 돔 이벤트는 모두 동일한 방법으로 접근 가능하다 함.
    */
    
    u4bi_true(e){
      alert('u4bi_true');
      e.preventDefault();
    }
    
    u4bi_false(e){
      alert('u4bi_false');
      e.preventDefault();
    }
    
  </script>
  
</item>