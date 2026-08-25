package Interface;

import Entity.Engine;
public interface EngineInjector { // Basically the car would implement this Interface and override this method.

    void injectEngine(Engine engine); // Method to inject the Engine Dependency
}
