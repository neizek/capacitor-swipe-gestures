import { WebPlugin } from '@capacitor/core';

import type { SwipeGesturesPluginPlugin } from './definitions';

export class SwipeGesturesPluginWeb extends WebPlugin implements SwipeGesturesPluginPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
