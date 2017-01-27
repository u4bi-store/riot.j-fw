var config = {
    content: [{
        type: 'row',
        content: [{
      title: '카테고리',
            type:'component',
            componentName: 'user-categori'
      },
      {title: '리스트',
            type:'component',
            componentName: 'user-list'
      },
      {title: '디테일',
            type:'component',
            componentName: 'user-detail'
        }]
    }]
};

var myLayout = new GoldenLayout(config);

function createRiot( container, state) {
  
  console.log('container');
  console.log(container);
  
  console.log('state');
  console.log(state);
  
  state.eventHub = myLayout.eventHub;
  
  riot.mount(container.getElement()[0], state.componentName, state);
}

myLayout.registerComponent( 'user-categori', createRiot);
myLayout.registerComponent( 'user-list', createRiot );
myLayout.registerComponent( 'user-detail', createRiot);

myLayout.init();