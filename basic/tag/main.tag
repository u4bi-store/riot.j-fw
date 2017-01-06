<main>
  <h3>{ opts.data.title }</h3>
  <ul>
    <li each={ board }>{ title } { content } { writer }</li>
  </ul>

  <script>
    this.board = opts.data.board;
  </script>
  
</main>
