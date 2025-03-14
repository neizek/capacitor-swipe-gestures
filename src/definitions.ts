export interface SwipeGesturesPluginPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
