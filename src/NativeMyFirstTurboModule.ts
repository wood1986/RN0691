import type { TurboModule } from "react-native";
import { TurboModuleRegistry } from "react-native";

export interface Spec extends TurboModule {
  readonly getConstants: () => {};

  getString(id: string): Promise<any>
}

export default TurboModuleRegistry.getEnforcing<Spec>('MyFirstTurboModule');
