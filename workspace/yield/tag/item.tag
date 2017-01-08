<item>
  
  <form onsubmit={ updItems }>
    이름 : <input ref="name"><br>
    유형 : <input type="number" ref="type">
    <button>생성</button>
  </form>
  
   <!-- form 외에도 yield태그는 다양한 용도로 사용될 수 있음. -->
  
  <box each={ items }>
    <h3>아이템소개</h3>
    
  </box>
  
  <script>
    
    this.items = [
      { num: 0, name: "사과", type: 1 },
      { num: 1, name: "오렌지", type: 2 }
    ];
    
    delItems(){
      this.items = [];
      this.update();
    }
    
    updItems(e){
      var refs = this.refs;
      var ren = this.items.length;
      
      this.items.push({
        num: ren,
        name: refs.name.value,
        type: refs.type.value
      });
      
      e.preventDefault();
    }
    
  </script>
  
</item>


<box>
  <yield/>
  <h2 id="name-{num}" >이름 : { name }</h2>
  <h2 id="type-{num}" >유형 : { type }</h2>
  <!-- id값을 정의 후에 폼을 한번 호출할 시 id값은 아래와 같이 정의됨.
       
       <h2 id="name-2">
       <h2 id="type-2">
       .
       .
       .
       <h2 id="name-6">
       <h2 id="type-6">

       간편하게 동적으로 HTML 컨텐츠를 바인딩해줌.

  -->
</box>


