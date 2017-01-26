<item>
  
  <div if={ isSpan }>
    <span>if control</span>
  </div>
  
  <ul>
    <li each={ items }>
      <input type="checkbox" checked={ done }> { title }
    </li>
  </ul>
  
  <div each={ data}>
    <p>
      <span onclick={ parent.remove }>{ title }</span>
    </p>
  </div>
  
  <div each={ words }>
    <p>
      <span onclick={ parent.removeWord }>{ title }</span>
    </p>
  </div>
  
  <custom-tag each={ items }>
    <p>{ title }</p>
  </custom-tag>
  
  <script>
    this.isSpan = true;
    
    this.items = [
      { title: 'A', done: true},
      { title: 'B'},
      { title: 'C'}
    ];
    
    this.data = [
      { title: 'DATA_A'},
      { title: 'DATA_B'}
    ];
    
    remove(event){
      console.log('remove function : '+event.target.innerHTML);
      console.log(event);
    }
    
    this.words = [
      { title: 'WORD_A'},
      { title: 'WORD_B'},
      { title: 'WORD_C'},
      { title: 'WORD_D'}
    ];
    
    removeWord(e){
      var word = e.item;
      console.log('word : '+word);
      
      var index = this.words.indexOf(word);
      console.log('index : '+index);
      
      this.words.splice(index, 1);
    }
  </script>
</item>