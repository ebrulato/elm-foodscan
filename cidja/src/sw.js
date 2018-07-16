importScripts('https://storage.googleapis.com/workbox-cdn/releases/3.3.1/workbox-sw.js');

if (workbox) {

  workbox.routing.registerRoute(
    /\.(?:png|gif|jpg|jpeg|svg)$/,
    workbox.strategies.cacheFirst({
      cacheName: 'images',
      plugins: [
        new workbox.expiration.Plugin({
          maxEntries: 60,
          maxAgeSeconds: 30 * 24 * 60 * 60, // 30 Days
        }),
      ],
    }),
  );

  workbox.routing.registerRoute(
    /\.(?:js|css)$/,
    workbox.strategies.cacheFirst({
      cacheName: 'static-resources',
      plugins: [
        new workbox.expiration.Plugin({
          maxEntries: 60,
          maxAgeSeconds: 10 * 24 * 60 * 60, // 10 Days
        }),
      ],
    }),
  );


  workbox.routing.registerRoute(
      'https://ssl-api.openfoodfacts.org/api/v0/produit/*',
      workbox.strategies.cacheFirst({
          cacheName: 'products',
          plugins: [
            new workbox.expiration.Plugin({
              maxEntries: 100,
              maxAgeSeconds: 10 * 24 * 60 * 60, // 5 minutes
            }),
            new workbox.cacheableResponse.Plugin({
              statuses: [0, 200],
            }),
          ],
      }),
  );

}
