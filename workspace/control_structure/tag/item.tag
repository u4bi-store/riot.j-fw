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
    
  </script>
</item>