# jme-alloc project 

An initiator template for the jme-alloc project providing a native allocation api through gradle modules.
### To build locally, use: 
```bash
┌─[pavl-machine@pavl-machine]─[/home/twisted/GradleProjects/jme-alloc]
└──╼ $./gradlew clean && 
      ./gradlew :jme3-alloc:compileJava && \
      ./gradlew :jme3-alloc-native:compileX86_64 && \
      ./gradlew :jme3-alloc-native:copyNatives && \
      ./gradlew :jme3-alloc:assemble
```
### To test locally, use: 
```bash
┌─[pavl-machine@pavl-machine]─[/home/twisted/GradleProjects/jme-alloc]
└──╼ $./gradlew :jme3-alloc-examples:run
```
### For more about, building, testing and contributing, visit:
> [CONTRIBUTING.md](https://github.com/Software-Hardware-Codesign/jme-alloc/blob/master/CONTRIBUTING.md)
#### API:
- [x] Native extraction according to the system variant (OS + architecture) using [`com.jme3.alloc.utils.loader.NativeBinaryLoader`](https://github.com/Software-Hardware-Codesign/jme-alloc/blob/master/jme3-alloc/src/main/java/com/jme3/alloc/util/loader/NativeBinaryLoader.java).
- [x] Dynamic linking code.
- [x] Base Allocator/De-allocator API: [`com.jme3.alloc.util.NativeBufferUtils`](https://github.com/Software-Hardware-Codesign/jme-alloc/blob/master/jme3-alloc/src/main/java/com/jme3/alloc/util/NativeBufferUtils.java) and [`com.jme3.alloc.NativeBufferAllocator`](https://github.com/Software-Hardware-Codesign/jme-alloc/blob/master/jme3-alloc/src/main/java/com/jme3/alloc/NativeBufferAllocator.java).
- [x] Native logging api with output to an external log file stream.

#### Build-system:
- [x] Separate jvm and native modules.
- [x] Generating header files for java sources.
- [x] Packaging java and natives in a jar.
- [x] Github-actions.
- [x] Handling different variants build (linux-x86-64).
- [x] Handling different variants build (linux-x86).
- [x] Handling different variants build (windows-x86-64).
- [x] Handling different variants build (macos-x86-64).
- [ ] Handling different variants build (windows-x86).
- [ ] Handling different variants build (macos-x86).
- [x] Handling different `android` build architectures (WIP).


