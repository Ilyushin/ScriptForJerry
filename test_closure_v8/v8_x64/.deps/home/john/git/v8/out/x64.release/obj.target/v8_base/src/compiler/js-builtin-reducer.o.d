cmd_/home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/js-builtin-reducer.o := /home/john/git/v8/third_party/llvm-build/Release+Asserts/bin/clang++ '-DCR_CLANG_REVISION=247874-1' '-DV8_TARGET_ARCH_X64' '-DENABLE_GDB_JIT_INTERFACE' '-DV8_DEPRECATION_WARNINGS' '-DV8_I18N_SUPPORT' '-DV8_USE_EXTERNAL_STARTUP_DATA' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-DICU_UTIL_DATA_IMPL=ICU_UTIL_DATA_STATIC' '-DU_USING_ICU_NAMESPACE=0' '-DU_ENABLE_DYLOAD=0' '-DU_STATIC_IMPLEMENTATION' '-DENABLE_HANDLE_ZAPPING' -I../. -I../third_party/icu/source/i18n -I../third_party/icu/source/common  -Wall -Werror -Wno-unused-parameter -Wno-long-long -pthread -pedantic -Wno-missing-field-initializers -Wshorten-64-to-32 -Wno-format-pedantic -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -m64 -m64 -fdata-sections -ffunction-sections -O3 -fdata-sections -ffunction-sections -O3 -Wnon-virtual-dtor -fno-exceptions -fno-rtti -std=gnu++0x -MMD -MF /home/john/git/v8/out/x64.release/.deps//home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/js-builtin-reducer.o.d.raw  -c -o /home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/js-builtin-reducer.o ../src/compiler/js-builtin-reducer.cc
/home/john/git/v8/out/x64.release/obj.target/v8_base/src/compiler/js-builtin-reducer.o: \
  ../src/compiler/js-builtin-reducer.cc .././src/compiler/diamond.h \
  .././src/compiler/common-operator.h .././src/compiler/frame-states.h \
  .././src/handles.h .././include/v8.h .././include/v8-version.h \
  .././include/v8config.h .././src/base/functional.h \
  .././src/base/macros.h .././src/base/build_config.h \
  .././src/base/compiler-specific.h .././src/base/logging.h \
  .././src/checks.h .././src/globals.h .././src/utils.h \
  .././src/allocation.h .././src/base/bits.h \
  .././src/base/platform/platform.h .././src/base/platform/mutex.h \
  .././src/base/lazy-instance.h .././src/base/once.h \
  .././src/base/atomicops.h .././src/base/atomicops_internals_x86_gcc.h \
  .././src/base/platform/semaphore.h .././src/list.h .././src/vector.h \
  .././src/compiler/machine-type.h .././src/signature.h .././src/zone.h \
  .././src/hashmap.h .././src/splay-tree.h .././src/zone-containers.h \
  .././src/zone-allocator.h .././src/compiler/graph.h \
  .././src/compiler/node.h .././src/compiler/opcodes.h \
  .././src/compiler/operator.h .././src/base/flags.h .././src/types.h \
  .././src/conversions.h .././src/objects.h .././src/assert-scope.h \
  .././src/bailout-reason.h .././src/base/smart-pointers.h \
  .././src/builtins.h .././src/elements-kind.h .././src/field-index.h \
  .././src/property-details.h .././src/flags.h \
  .././src/flag-definitions.h .././src/unicode.h \
  .././src/unicode-decoder.h .././src/ostreams.h \
  .././src/compiler/js-builtin-reducer.h \
  .././src/compiler/graph-reducer.h .././src/compiler/node-marker.h \
  .././src/compiler/simplified-operator.h .././src/compiler/js-graph.h \
  .././src/compiler/common-node-cache.h .././src/compiler/node-cache.h \
  .././src/compiler/js-operator.h .././src/runtime/runtime.h \
  .././src/compiler/machine-operator.h \
  .././src/compiler/node-properties.h .././src/isolate.h \
  .././include/v8-debug.h .././src/cancelable-task.h \
  .././include/v8-platform.h .././src/contexts.h .././src/heap/heap.h \
  .././src/atomic-utils.h .././src/heap/incremental-marking.h \
  .././src/execution.h .././src/heap/incremental-marking-job.h \
  .././src/heap/mark-compact.h .././src/heap/spaces.h \
  .././src/heap/store-buffer.h .././src/date.h .././src/frames.h \
  .././src/safepoint-table.h .././src/v8memory.h \
  .././src/futex-emulation.h .././src/base/platform/condition-variable.h \
  .././src/global-handles.h .././include/v8-profiler.h \
  .././src/messages.h .././src/optimizing-compile-dispatcher.h \
  .././src/regexp/regexp-stack.h .././src/runtime-profiler.h \
  .././src/compiler/node-matchers.h .././src/assembler.h \
  .././src/token.h .././src/objects-inl.h .././src/contexts-inl.h \
  .././src/conversions-inl.h .././src/unicode-cache-inl.h \
  .././src/unicode-inl.h .././src/unicode-cache.h \
  .././src/char-predicates.h .././src/double.h .././src/diy-fp.h \
  .././src/scanner.h .././src/strtod.h .././src/factory.h \
  .././src/field-index-inl.h .././src/heap/heap-inl.h \
  .././src/counters.h .././src/base/platform/elapsed-timer.h \
  .././src/base/platform/time.h .././src/heap/incremental-marking-inl.h \
  .././src/heap/spaces-inl.h .././src/heap-profiler.h .././src/msan.h \
  .././src/heap/store-buffer-inl.h .././src/list-inl.h .././src/log.h \
  .././src/layout-descriptor-inl.h .././src/layout-descriptor.h \
  .././src/lookup.h .././src/property.h .././src/prototype.h \
  .././src/transitions-inl.h .././src/transitions.h \
  .././src/type-feedback-vector-inl.h .././src/type-feedback-vector.h \
  .././src/types-inl.h .././src/handles-inl.h .././src/api.h \
  .././include/v8-testing.h
../src/compiler/js-builtin-reducer.cc:
.././src/compiler/diamond.h:
.././src/compiler/common-operator.h:
.././src/compiler/frame-states.h:
.././src/handles.h:
.././include/v8.h:
.././include/v8-version.h:
.././include/v8config.h:
.././src/base/functional.h:
.././src/base/macros.h:
.././src/base/build_config.h:
.././src/base/compiler-specific.h:
.././src/base/logging.h:
.././src/checks.h:
.././src/globals.h:
.././src/utils.h:
.././src/allocation.h:
.././src/base/bits.h:
.././src/base/platform/platform.h:
.././src/base/platform/mutex.h:
.././src/base/lazy-instance.h:
.././src/base/once.h:
.././src/base/atomicops.h:
.././src/base/atomicops_internals_x86_gcc.h:
.././src/base/platform/semaphore.h:
.././src/list.h:
.././src/vector.h:
.././src/compiler/machine-type.h:
.././src/signature.h:
.././src/zone.h:
.././src/hashmap.h:
.././src/splay-tree.h:
.././src/zone-containers.h:
.././src/zone-allocator.h:
.././src/compiler/graph.h:
.././src/compiler/node.h:
.././src/compiler/opcodes.h:
.././src/compiler/operator.h:
.././src/base/flags.h:
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
.././src/compiler/js-builtin-reducer.h:
.././src/compiler/graph-reducer.h:
.././src/compiler/node-marker.h:
.././src/compiler/simplified-operator.h:
.././src/compiler/js-graph.h:
.././src/compiler/common-node-cache.h:
.././src/compiler/node-cache.h:
.././src/compiler/js-operator.h:
.././src/runtime/runtime.h:
.././src/compiler/machine-operator.h:
.././src/compiler/node-properties.h:
.././src/isolate.h:
.././include/v8-debug.h:
.././src/cancelable-task.h:
.././include/v8-platform.h:
.././src/contexts.h:
.././src/heap/heap.h:
.././src/atomic-utils.h:
.././src/heap/incremental-marking.h:
.././src/execution.h:
.././src/heap/incremental-marking-job.h:
.././src/heap/mark-compact.h:
.././src/heap/spaces.h:
.././src/heap/store-buffer.h:
.././src/date.h:
.././src/frames.h:
.././src/safepoint-table.h:
.././src/v8memory.h:
.././src/futex-emulation.h:
.././src/base/platform/condition-variable.h:
.././src/global-handles.h:
.././include/v8-profiler.h:
.././src/messages.h:
.././src/optimizing-compile-dispatcher.h:
.././src/regexp/regexp-stack.h:
.././src/runtime-profiler.h:
.././src/compiler/node-matchers.h:
.././src/assembler.h:
.././src/token.h:
.././src/objects-inl.h:
.././src/contexts-inl.h:
.././src/conversions-inl.h:
.././src/unicode-cache-inl.h:
.././src/unicode-inl.h:
.././src/unicode-cache.h:
.././src/char-predicates.h:
.././src/double.h:
.././src/diy-fp.h:
.././src/scanner.h:
.././src/strtod.h:
.././src/factory.h:
.././src/field-index-inl.h:
.././src/heap/heap-inl.h:
.././src/counters.h:
.././src/base/platform/elapsed-timer.h:
.././src/base/platform/time.h:
.././src/heap/incremental-marking-inl.h:
.././src/heap/spaces-inl.h:
.././src/heap-profiler.h:
.././src/msan.h:
.././src/heap/store-buffer-inl.h:
.././src/list-inl.h:
.././src/log.h:
.././src/layout-descriptor-inl.h:
.././src/layout-descriptor.h:
.././src/lookup.h:
.././src/property.h:
.././src/prototype.h:
.././src/transitions-inl.h:
.././src/transitions.h:
.././src/type-feedback-vector-inl.h:
.././src/type-feedback-vector.h:
.././src/types-inl.h:
.././src/handles-inl.h:
.././src/api.h:
.././include/v8-testing.h:
