var logger = function (ctx, next, page) {
    console.log(ctx.canonicalPath);
    next();
};

var routes = [
  {
    route: '*',
    use: logger
  },
  {
    route: '/',
    tag: 'intro'
  },
  {
    route: '/intro',
    tag: 'intro'
  },
  {
    route: '/main/:name',
    tag: 'main'
  },
  {
    route: '*',
    tag: 'intro'
  }
];

riot.mount('*', {
    routes: routes,
    routeroptions: { hashbang: true }
});