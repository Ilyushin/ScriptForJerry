cmd_/home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/tail-call-optimization.o := /home/john/git/v8/third_party/llvm-build/Release+Asserts/bin/clang++ '-DCR_CLANG_REVISION=247874-1' '-DV8_TARGET_ARCH_X64' '-DENABLE_GDB_JIT_INTERFACE' '-DV8_DEPRECATION_WARNINGS' '-DV8_I18N_SUPPORT' '-DV8_USE_EXTERNAL_STARTUP_DATA' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-DICU_UTIL_DATA_IMPL=ICU_UTIL_DATA_STATIC' '-DU_USING_ICU_NAMESPACE=0' '-DU_ENABLE_DYLOAD=0' '-DU_STATIC_IMPLEMENTATION' '-DENABLE_HANDLE_ZAPPING' -I../. -I../third_party/icu/source/i18n -I../third_party/icu/source/common  -Wall -Werror -Wno-unused-parameter -Wno-long-long -pthread -pedantic -Wno-missing-field-initializers -Wshorten-64-to-32 -Wno-format-pedantic -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -m64 -m64 -fdata-sections -ffunction-sections -O3 -fdata-sections -ffunction-sections -O3 -Wnon-virtual-dtor -fno-exceptions -fno-rtti -std=gnu++0x -MMD -MF /home/john/git/v8/out/x64.release/.deps//home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/tail-call-optimization.o.d.raw  -c -o /home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/tail-call-optimization.o ../src/compiler/tail-call-optimization.cc
/home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/tail-call-optimization.o: \
  ../src/compiler/tail-call-optimization.cc \
  .././src/compiler/tail-call-optimization.h \
  .././src/compiler/graph-reducer.h .././src/compiler/node-marker.h \
  .././src/compiler/node.h .././src/compiler/opcodes.h \
  .././src/compiler/operator.h .././src/base/flags.h \
  .././src/base/compiler-specific.h .././include/v8config.h \
  .././src/base/functional.h .././src/base/macros.h \
  .././src/base/build_config.h .././src/base/logging.h \
  .././src/handles.h .././include/v8.h .././include/v8-version.h \
  .././src/checks.h .././src/globals.h .././src/zone.h \
  .././src/allocation.h .././src/hashmap.h .././src/base/bits.h \
  .././src/utils.h .././src/base/platform/platform.h \
  .././src/base/platform/mutex.h .././src/base/lazy-instance.h \
  .././src/base/once.h .././src/base/atomicops.h \
  .././src/base/atomicops_internals_x86_gcc.h \
  .././src/base/platform/semaphore.h .././src/list.h .././src/vector.h \
  .././src/splay-tree.h .././src/types.h .././src/conversions.h \
  .././src/objects.h .././src/assert-scope.h .././src/bailout-reason.h \
  .././src/base/smart-pointers.h .././src/builtins.h \
  .././src/elements-kind.h .././src/field-index.h \
  .././src/property-details.h .././src/flags.h \
  .././src/flag-definitions.h .././src/unicode.h \
  .././src/unicode-decoder.h .././src/ostreams.h \
  .././src/zone-containers.h .././src/zone-allocator.h \
  .././src/compiler/common-operator.h .././src/compiler/frame-states.h \
  .././src/compiler/machine-type.h .././src/signature.h \
  .././src/compiler/graph.h .././src/compiler/linkage.h \
  .././src/compiler/frame.h .././src/bit-vector.h .././src/frames.h \
  .././src/safepoint-table.h .././src/heap/heap.h \
  .././src/atomic-utils.h .././src/heap/incremental-marking.h \
  .././src/cancelable-task.h .././include/v8-platform.h \
  .././src/execution.h .././src/heap/incremental-marking-job.h \
  .././src/heap/mark-compact.h .././src/heap/spaces.h \
  .././src/heap/store-buffer.h .././src/v8memory.h \
  .././src/runtime/runtime.h .././src/compiler/node-properties.h
../src/compiler/tail-call-optimization.cc:
.././src/compiler/tail-call-optimization.h:
.././src/compiler/graph-reducer.h:
.././src/compiler/node-marker.h:
.././src/compiler/node.h:
.././src/compiler/opcodes.h:
.././src/compiler/operator.h:
.././src/base/flags.h:
.././src/base/compiler-specific.h:
.././include/v8config.h:
.././src/base/functional.h:
.././src/base/macros.h:
.././src/base/build_config.h:
.././src/base/logging.h:
.././src/handles.h:
.././include/v8.h:
.././include/v8-version.h:
.././src/checks.h:
.././src/globals.h:
.././src/zone.h:
.././src/allocation.h:
.././src/hashmap.h:
.././src/base/bits.h:
.././src/utils.h:
.././src/base/platform/platform.h:
.././src/base/platform/mutex.h:
.././src/base/lazy-instance.h:
.././src/base/once.h:
.././src/base/atomicops.h:
.././src/base/atomicops_internals_x86_gcc.h:
.././src/base/platform/semaphore.h:
.././src/list.h:
.././src/vector.h:
.././src/splay-tree.h:
.././src/types.h:
.././src/conversions.h:
.././src/objects.h:
.././src/assert-scope.h:
.././src/bailout-reason.h:
.././src/base/smart-pointers.h:
.././src/builtins.h:
.././src/elements-kind.h:
.././src/field-index.h:
.././src/property-details.h:
.././src/flags.h:
.././src/flag-definitions.h:
.././src/unicode.h:
.././src/unicode-decoder.h:
.././src/ostreams.h:
.././src/zone-containers.h:
.././src/zone-allocator.h:
.././src/compiler/common-operator.h:
.././src/compiler/frame-states.h:
.././src/compiler/machine-type.h:
.././src/signature.h:
.././src/compiler/graph.h:
.././src/compiler/linkage.h:
.././src/compiler/frame.h:
.././src/bit-vector.h:
.././src/frames.h:
.././src/safepoint-table.h:
.././src/heap/heap.h:
.././src/atomic-utils.h:
.././src/heap/incremental-marking.h:
.././src/cancelable-task.h:
.././include/v8-platform.h:
.././src/execution.h:
.././src/heap/incremental-marking-job.h:
.././src/heap/mark-compact.h:
.././src/heap/spaces.h:
.././src/heap/store-buffer.h:
.././src/v8memory.h:
.././src/runtime/runtime.h:
.././src/compiler/node-properties.h:
