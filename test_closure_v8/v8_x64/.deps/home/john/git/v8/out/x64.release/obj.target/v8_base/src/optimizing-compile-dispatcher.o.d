cmd_/home/john/git/v8/out/x64.release/obj.target/v8_base/src/optimizing-compile-dispatcher.o := /home/john/git/v8/third_party/llvm-build/Release+Asserts/bin/clang++ '-DCR_CLANG_REVISION=247874-1' '-DV8_TARGET_ARCH_X64' '-DENABLE_GDB_JIT_INTERFACE' '-DV8_DEPRECATION_WARNINGS' '-DV8_I18N_SUPPORT' '-DV8_USE_EXTERNAL_STARTUP_DATA' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-DICU_UTIL_DATA_IMPL=ICU_UTIL_DATA_STATIC' '-DU_USING_ICU_NAMESPACE=0' '-DU_ENABLE_DYLOAD=0' '-DU_STATIC_IMPLEMENTATION' '-DENABLE_HANDLE_ZAPPING' -I../. -I../third_party/icu/source/i18n -I../third_party/icu/source/common  -Wall -Werror -Wno-unused-parameter -Wno-long-long -pthread -pedantic -Wno-missing-field-initializers -Wshorten-64-to-32 -Wno-format-pedantic -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -m64 -m64 -fdata-sections -ffunction-sections -O3 -fdata-sections -ffunction-sections -O3 -Wnon-virtual-dtor -fno-exceptions -fno-rtti -std=gnu++0x -MMD -MF /home/john/git/v8/out/x64.release/.deps//home/john/git/v8/out/x64.release/obj.target/v8_base/src/optimizing-compile-dispatcher.o.d.raw  -c -o /home/john/git/v8/out/x64.release/obj.target/v8_base/src/optimizing-compile-dispatcher.o ../src/optimizing-compile-dispatcher.cc
/home/john/git/v8/out/x64.release/obj.target/v8_base/src/optimizing-compile-dispatcher.o: \
  ../src/optimizing-compile-dispatcher.cc \
  .././src/optimizing-compile-dispatcher.h .././src/base/atomicops.h \
  .././src/base/build_config.h .././include/v8config.h \
  .././src/base/atomicops_internals_x86_gcc.h \
  .././src/base/platform/condition-variable.h \
  .././src/base/lazy-instance.h .././src/base/macros.h \
  .././src/base/compiler-specific.h .././src/base/logging.h \
  .././src/base/once.h .././src/base/platform/mutex.h \
  .././src/base/platform/platform.h .././src/base/platform/semaphore.h \
  .././src/flags.h .././src/globals.h .././src/flag-definitions.h \
  .././src/list.h .././src/checks.h .././include/v8.h \
  .././include/v8-version.h .././src/utils.h .././src/allocation.h \
  .././src/base/bits.h .././src/vector.h \
  .././src/full-codegen/full-codegen.h .././src/assert-scope.h \
  .././src/ast.h .././src/assembler.h .././src/builtins.h \
  .././src/handles.h .././src/base/functional.h .././src/isolate.h \
  .././include/v8-debug.h .././src/cancelable-task.h \
  .././include/v8-platform.h .././src/contexts.h .././src/heap/heap.h \
  .././src/atomic-utils.h .././src/heap/incremental-marking.h \
  .././src/execution.h .././src/heap/incremental-marking-job.h \
  .././src/heap/mark-compact.h .././src/heap/spaces.h .././src/hashmap.h \
  .././src/objects.h .././src/bailout-reason.h \
  .././src/base/smart-pointers.h .././src/elements-kind.h \
  .././src/field-index.h .././src/property-details.h .././src/unicode.h \
  .././src/unicode-decoder.h .././src/zone.h .././src/splay-tree.h \
  .././src/heap/store-buffer.h .././src/date.h .././src/frames.h \
  .././src/safepoint-table.h .././src/v8memory.h \
  .././src/futex-emulation.h .././src/global-handles.h \
  .././include/v8-profiler.h .././src/messages.h \
  .././src/regexp/regexp-stack.h .././src/runtime/runtime.h \
  .././src/runtime-profiler.h .././src/token.h \
  .././src/ast-value-factory.h .././src/api.h .././include/v8-testing.h \
  .././src/factory.h .././src/objects-inl.h .././src/contexts-inl.h \
  .././src/conversions-inl.h .././src/unicode-cache-inl.h \
  .././src/unicode-inl.h .././src/unicode-cache.h \
  .././src/char-predicates.h .././src/conversions.h .././src/double.h \
  .././src/diy-fp.h .././src/scanner.h .././src/strtod.h \
  .././src/field-index-inl.h .././src/heap/heap-inl.h \
  .././src/counters.h .././src/base/platform/elapsed-timer.h \
  .././src/base/platform/time.h .././src/heap/incremental-marking-inl.h \
  .././src/heap/spaces-inl.h .././src/heap-profiler.h .././src/msan.h \
  .././src/heap/store-buffer-inl.h .././src/list-inl.h .././src/log.h \
  .././src/layout-descriptor-inl.h .././src/layout-descriptor.h \
  .././src/lookup.h .././src/property.h .././src/types.h \
  .././src/ostreams.h .././src/prototype.h .././src/transitions-inl.h \
  .././src/transitions.h .././src/type-feedback-vector-inl.h \
  .././src/type-feedback-vector.h .././src/zone-containers.h \
  .././src/zone-allocator.h .././src/types-inl.h .././src/handles-inl.h \
  .././src/base/flags.h .././src/modules.h .././src/regexp/jsregexp.h \
  .././src/small-pointer-list.h .././src/variables.h \
  .././src/bit-vector.h .././src/code-stubs.h .././src/codegen.h \
  .././src/x64/codegen-x64.h .././src/macro-assembler.h \
  .././src/x64/assembler-x64.h .././src/compiler.h \
  .././src/compilation-dependencies.h .././src/signature.h \
  .././src/x64/assembler-x64-inl.h .././src/base/cpu.h \
  .././src/debug/debug.h .././src/arguments.h .././src/debug/liveedit.h \
  .././src/string-stream.h .././src/v8threads.h \
  .././src/x64/macro-assembler-x64.h .././src/x64/frames-x64.h \
  .././src/ic/ic-state.h .././src/interface-descriptors.h \
  .././src/x64/code-stubs-x64.h .././src/scopes.h \
  .././src/pending-compilation-error-handler.h .././src/hydrogen.h \
  .././src/accessors.h .././src/hydrogen-instructions.h \
  .././src/deoptimizer.h .././src/hydrogen-types.h .././src/unique.h \
  .././src/v8.h
../src/optimizing-compile-dispatcher.cc:
.././src/optimizing-compile-dispatcher.h:
.././src/base/atomicops.h:
.././src/base/build_config.h:
.././include/v8config.h:
.././src/base/atomicops_internals_x86_gcc.h:
.././src/base/platform/condition-variable.h:
.././src/base/lazy-instance.h:
.././src/base/macros.h:
.././src/base/compiler-specific.h:
.././src/base/logging.h:
.././src/base/once.h:
.././src/base/platform/mutex.h:
.././src/base/platform/platform.h:
.././src/base/platform/semaphore.h:
.././src/flags.h:
.././src/globals.h:
.././src/flag-definitions.h:
.././src/list.h:
.././src/checks.h:
.././include/v8.h:
.././include/v8-version.h:
.././src/utils.h:
.././src/allocation.h:
.././src/base/bits.h:
.././src/vector.h:
.././src/full-codegen/full-codegen.h:
.././src/assert-scope.h:
.././src/ast.h:
.././src/assembler.h:
.././src/builtins.h:
.././src/handles.h:
.././src/base/functional.h:
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
.././src/hashmap.h:
.././src/objects.h:
.././src/bailout-reason.h:
.././src/base/smart-pointers.h:
.././src/elements-kind.h:
.././src/field-index.h:
.././src/property-details.h:
.././src/unicode.h:
.././src/unicode-decoder.h:
.././src/zone.h:
.././src/splay-tree.h:
.././src/heap/store-buffer.h:
.././src/date.h:
.././src/frames.h:
.././src/safepoint-table.h:
.././src/v8memory.h:
.././src/futex-emulation.h:
.././src/global-handles.h:
.././include/v8-profiler.h:
.././src/messages.h:
.././src/regexp/regexp-stack.h:
.././src/runtime/runtime.h:
.././src/runtime-profiler.h:
.././src/token.h:
.././src/ast-value-factory.h:
.././src/api.h:
.././include/v8-testing.h:
.././src/factory.h:
.././src/objects-inl.h:
.././src/contexts-inl.h:
.././src/conversions-inl.h:
.././src/unicode-cache-inl.h:
.././src/unicode-inl.h:
.././src/unicode-cache.h:
.././src/char-predicates.h:
.././src/conversions.h:
.././src/double.h:
.././src/diy-fp.h:
.././src/scanner.h:
.././src/strtod.h:
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
.././src/types.h:
.././src/ostreams.h:
.././src/prototype.h:
.././src/transitions-inl.h:
.././src/transitions.h:
.././src/type-feedback-vector-inl.h:
.././src/type-feedback-vector.h:
.././src/zone-containers.h:
.././src/zone-allocator.h:
.././src/types-inl.h:
.././src/handles-inl.h:
.././src/base/flags.h:
.././src/modules.h:
.././src/regexp/jsregexp.h:
.././src/small-pointer-list.h:
.././src/variables.h:
.././src/bit-vector.h:
.././src/code-stubs.h:
.././src/codegen.h:
.././src/x64/codegen-x64.h:
.././src/macro-assembler.h:
.././src/x64/assembler-x64.h:
.././src/compiler.h:
.././src/compilation-dependencies.h:
.././src/signature.h:
.././src/x64/assembler-x64-inl.h:
.././src/base/cpu.h:
.././src/debug/debug.h:
.././src/arguments.h:
.././src/debug/liveedit.h:
.././src/string-stream.h:
.././src/v8threads.h:
.././src/x64/macro-assembler-x64.h:
.././src/x64/frames-x64.h:
.././src/ic/ic-state.h:
.././src/interface-descriptors.h:
.././src/x64/code-stubs-x64.h:
.././src/scopes.h:
.././src/pending-compilation-error-handler.h:
.././src/hydrogen.h:
.././src/accessors.h:
.././src/hydrogen-instructions.h:
.././src/deoptimizer.h:
.././src/hydrogen-types.h:
.././src/unique.h:
.././src/v8.h:
