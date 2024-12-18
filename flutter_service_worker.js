'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "4f58b0efe690085caaf12a49b624f8b4",
".git/config": "7cf358951c9a94e5b428482076d12983",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "bcf13096f73021ba2ccee305cc53661a",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "f341eb50b97b2c49c0eca922b37b9a68",
".git/logs/refs/heads/gh-pages": "99209212f610f95f499b0298ea3ccbe0",
".git/logs/refs/heads/main": "5b10a2a2d07c680fcfd8be61c8c89dd5",
".git/logs/refs/remotes/origin/gh-pages": "87295c82a4a718fdd653f078bcf3e050",
".git/objects/02/cc76344ef177fb16bfc9c5cb3e711228eaa642": "57f178a443eb9c72047224b5e245b0bc",
".git/objects/03/c531a7a4eadfbb97e5434401927ee31890cf33": "fe6b24f60048b7f218835d95c2c650ae",
".git/objects/07/ac4aa7750993e18581b2134e3503c82563846e": "797c3f173b29b839bc5a2c8baca7d760",
".git/objects/08/b5e1c4990704e31095ac8b481b392c4f29f0fd": "1b15951a3f3f06da3f67475d4055d554",
".git/objects/0b/49615d68ec3a6337b194e5f807824997836e3e": "af97fff5322d5aa1a2b7be66c566d4ef",
".git/objects/0b/85bcdb86bf9e9f9fda81b13cec9c9349d47d77": "77cbf4b6cc88e2471afd14a98ef2e0ed",
".git/objects/18/a734a10dbaf30976d41bd8c3001a00862a8bd7": "3e6a0d71fb8e874671f6f550fbd562c2",
".git/objects/1a/7504adb49cf28054d6a6e3113230dd53025664": "f0da3e497568a3299b8654483b760fa5",
".git/objects/1d/384f3748038966a5c7316223edf120dd5894dd": "a8d542276aa823dfefb8d26439e1077a",
".git/objects/1e/bf993c04c08e17a0122730f8d7ce6e139c8bad": "eeb4f0d71f24758335fe1753273ad6c2",
".git/objects/1f/686edd1465272558af328ca43cb7189a0059e6": "5e83820f6d3e5392693d45bc239b2b61",
".git/objects/20/a63ab45a861f122652453d3fd6c6d8f8952947": "8dcad0ed9534b6eb7014793ab40aa335",
".git/objects/2c/08bce9f1590d00a212f61e5d03dc3627bce691": "71511e559218398d978e3f82ca6818b7",
".git/objects/2c/4552f35d0a2d56d3c1504cdff1467d04c15f7d": "102ddc4d066fe362afc12206eb4cc33b",
".git/objects/2c/545b280a04babbeb7d5787c3dfe00a0e3f9b66": "37fe5cd1a4e223867691e431afea1066",
".git/objects/2e/49972419af0b94b5f8cff0c9cb0a176e906b08": "f5194a384bbf95ca40838299fdb7c68a",
".git/objects/35/91af41948adc8001f3586d76b91181311953fc": "c91d33b29071dcff3b2b3385383761cb",
".git/objects/37/7580cbf691d03aea79c63a3a251b1b48ac01f1": "c196d282a50e3c372b4445c6b8868297",
".git/objects/3a/b5f94c7d01fbd93e611845f73ba7660a634466": "9755d75ac5efe074fc99949212ab81dc",
".git/objects/3c/0d0b94aa15072b8e5f5ae54df46f1040669b95": "ab916f9dad0b2973fbb4ee78e27dc533",
".git/objects/3e/a8bf75bb0a3db70b16e2d424d16d0dd50d8f04": "119b8e9df922c4ab5b27bf8a11eab201",
".git/objects/46/7973d9d81e681b39402cea98e2fdd4bec62e80": "d4355c7057df1ed5695766a246f7240e",
".git/objects/50/cb3127493eeefde674f6acddae3566cff5d58e": "e3a6e14ed58d48cb64516890e22c3bfd",
".git/objects/51/34e6402246228fb7f58ce8fe76727a61d99a62": "6b5e5b48febe40daec7062aecdc3b39f",
".git/objects/55/5b211b065275faf128373830a79d6268eac7ed": "271fb3cfeda2870361bc173eeae8154d",
".git/objects/5b/952a9df681794b30d0d20cf9f333766d8d9251": "b7b5d347bd651a08d1420eb4ec28ff8c",
".git/objects/5f/746ea1f7a4b2b3a7b0764c168a2b9ceca609fd": "aea9acfb775fec35d5eb2971556c28da",
".git/objects/62/a01d6826913d9efa140d2e9f4bc0f13918e607": "44ba2af6a4f05cb190463143170ae010",
".git/objects/65/b25a6dde49af10d388cb58a03e1dc40db3d341": "1996e896c048ac61230fdd23b8d0241d",
".git/objects/70/010cc4761157d9d7cc2d082cf342e63fe1190a": "baf21d1dacab382149ee93266543ff40",
".git/objects/7c/4f9210195308adef97c8cf76c997a21318900a": "cbbe54bcf966f9e2c774d6ca4446e35b",
".git/objects/7e/2c02d3cfc9b2aa31b7c80184e88642e6de4a32": "9e5ccfd0c5f2c27288cfaf626d5d9d48",
".git/objects/81/b478e64c7e84fdbc7204db7a150dceef9e0cc1": "341897cbe154a246684220786e9a68bd",
".git/objects/88/4ab29e0fe95ca52899edbc2c4edd21464cc151": "c8bf08d29f5a329ecae2c0bb020022c4",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8b/5ea0a4257764f092365abaab66600d654b481d": "8ac6a275792e53dee50c131a214a9c20",
".git/objects/8c/03574159a631101ee8c13cb84fb53454fee6e8": "8b5b20800002505cf03275c982103958",
".git/objects/8e/155896ea0401fcf1258c76579ff9414313ebe5": "d633b9530d776da19164eaf34cddbac7",
".git/objects/8e/7f4b338840099949781ab85496d7a67fae46f1": "7f2803c236e9e7d95ef6ed16a3a2bd13",
".git/objects/90/ea2602923ec05d510c9737c8903b9c2cf55c00": "33918d002796ecd9cd55c237a17e731a",
".git/objects/ae/37803d1933c3979fd1b939ff61cc667b0b70dc": "f5c08c98e82ebd9034dbd78b64a292fa",
".git/objects/ae/9c1bc11367c09c12c0c3fa20f090f8e25475c9": "405bff963eddffb60e12c11f810bb0af",
".git/objects/af/e93ef6923a83324e23fc9001e3823d07ff08a6": "ed2cbd562f17363760715013d4edefe6",
".git/objects/b2/2fdb2d1fa6a3bced274617d58f6ab432bb0d8b": "1b405e4dfab487f51d41422d52600614",
".git/objects/b4/61f7f370b4ce803821567eb764df26daf56553": "7849df373a0318b0188c0448feaffbbe",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/0093a6e5f2ea1654cda795a1d0bfca0eefbfe9": "049902e747f81dc4d2025a75663e5f54",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/bb/ac29f5ef7a40bf14c0901bc1457724156bc0de": "1393f20f0610cabefe2d4f45865b0f54",
".git/objects/cc/34941b8e9572dac2e217afc17b555779c035bf": "c2679686ae2318587b954af902fdac16",
".git/objects/d3/efa7fd80d9d345a1ad0aaa2e690c38f65f4d4e": "610858a6464fa97567f7cce3b11d9508",
".git/objects/d4/a63aa8ad6ea64441b44856cda77eebc8c756c3": "ca67afa1d71e22e1724a7beec324a96b",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/e4/2c3204f31b1a130d235f00a9db32f33e37c43a": "599d4045f3751f9cf0c5f9026d350f1b",
".git/objects/e7/5e920f175da53dd6f04d858636baa25dc702f4": "0fd694d0b7477cee41611e70d0cd6732",
".git/objects/e9/ffd1c6f9fcc4a4ad85f381b84b36897626a471": "b83d855ca6c4e992b72ede8500a4fda9",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/81ba39e3232bbc1d4abbf9ad73c12483db2b42": "e676b29478a8b9ad3753bf8f73f0edaf",
".git/objects/ff/91f7b83a2412dfe96bd77b6e7866afece256cf": "d9469974dfe2baedcf33c71bb97754d2",
".git/refs/heads/gh-pages": "5bfcf874251d69127225398c9691d75d",
".git/refs/heads/main": "1bc24791d256a1a7b59ec71add4d73bb",
".git/refs/remotes/origin/gh-pages": "5bfcf874251d69127225398c9691d75d",
"assets/AssetManifest.bin": "fd918ed4c77f024469eb63fb239d6bad",
"assets/AssetManifest.json": "49cede6bf43440af80251742b021cb3d",
"assets/FontManifest.json": "4756aea7776137067bf24c0d0905e64a",
"assets/fonts/leaguespartan.ttf": "7cc8cbbd7a330c0d1e7c08c6d62711e4",
"assets/fonts/MaterialIcons-Regular.otf": "0268ac7e42d2fa257c95de7de365082f",
"assets/fonts/nunito.ttf": "1c0110920bc84f94fc7f1792fe15551d",
"assets/icons/android.png": "1b831e68e2d9d6e48e739d73c833cc9d",
"assets/icons/apple.png": "b10c5304371bd6d4e585399c752e4f84",
"assets/icons/arrow.png": "80ca0657d42371190435fd348300ea49",
"assets/icons/circle_grid.png": "2f194ca59d6e5ee5bbf0e5cf0914ca07",
"assets/icons/facebook.png": "24d5c8e776d18772cc550c847e12101d",
"assets/icons/fast.png": "42c046880a41b3c9d43971327d02bb1e",
"assets/icons/instagram.png": "78ee85c61bf890b959d128a50a24daa7",
"assets/icons/pause.png": "b67fb81baa4f3720c930e207c36ef7e4",
"assets/icons/pinterest.png": "b6c46692b6dce33933cca1b7f415a0d5",
"assets/icons/play.png": "60c26a1f5a5b23941f596b1c19a05500",
"assets/icons/twitter.png": "53bf93c9f5c965578643aeecc0707857",
"assets/images/background.jpg": "ee0c4584659e3a3e2e8ca5c0cc344033",
"assets/images/background.png": "1e1a0a7d10694c2c41076d021888385d",
"assets/images/background2.png": "3b659effb250d10b5cf7f001a6749386",
"assets/images/foreground.jpg": "a1002fd1bb0ec63f5ad271558df34498",
"assets/images/foreground.png": "a11f9fb98fbdbc83e601d725dc927ed7",
"assets/images/supermarket.jpg": "7ab769b8e7729387be8a59018d7a24f6",
"assets/images/supermarket2.png": "3dfc396908330661a616856cc2790d20",
"assets/NOTICES": "bdd87585deefb6e04728f796091ef299",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "6b515e434cea20006b3ef1726d2c8894",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "9d73d8a2ee26dbcd7c48398cf27e2456",
"/": "9d73d8a2ee26dbcd7c48398cf27e2456",
"main.dart.js": "b24a86af93b3377f2eb42e6654d9ee4c",
"manifest.json": "9fabc269043ae257489ab91bf5d7815b",
"version.json": "a5f4160878aa7202e1fab81b06449120"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
