<item>
  <p id="item">u4bi</p>
  
  <script>

    /* 실패 */
    console.log('a : ', document.getElementById('item'));

    
    /* 파일이 업데이트 될 때 마다 실행 */
    this.on('update', function(){
      console.log('b : ', document.getElementById('item'));
    });

    
    /* 최초 마운트시 한번만 실행 */
    this.on('mount', function(){
      console.log('c : ', document.getElementById('item'));
    });

    /* 이외에도 많음
    
      before-mound : 마운트 되기전 한번만 실행
      
      mount : 마운트 된후 한번만 실행
      update : 업데이트 되기전 매번 실행
      
      updated : 업데이트 된후 매번 실행
      
      before-unmount : 삭제되기전 한번만 실행
      unmount : 삭제 된후 한번만 실행
      
      * : 모든 이벤트에 실행 */
    
    
    
    /* 모든 이벤트가 실행될 때마다 실행 */
    this.on('*', function(){
      console.log('d : ', document.getElementById('item'));
    });
    
  </script>
  
</item>