import { registerPlugin } from '@capacitor/core';

import type { SwipeGesturesPluginPlugin } from './definitions';

const SwipeGesturesPlugin = registerPlugin<SwipeGesturesPluginPlugin>('SwipeGesturesPlugin', {
  web: () => import('./web').then((m) => new m.SwipeGesturesPluginWeb()),
});

export * from './definitions';
export { SwipeGesturesPlugin };
