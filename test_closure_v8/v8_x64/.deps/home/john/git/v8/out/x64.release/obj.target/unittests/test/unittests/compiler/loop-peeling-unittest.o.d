cmd_/home/john/git/v8/out/x64.release/obj.target/unittests/test/unittests/compiler/loop-peeling-unittest.o := /home/john/git/v8/third_party/llvm-build/Release+Asserts/bin/clang++ '-DCR_CLANG_REVISION=247874-1' '-DV8_TARGET_ARCH_X64' '-DENABLE_GDB_JIT_INTERFACE' '-DV8_DEPRECATION_WARNINGS' '-DV8_I18N_SUPPORT' '-DV8_USE_EXTERNAL_STARTUP_DATA' '-DV8_IMMINENT_DEPRECATION_WARNINGS' '-DGTEST_HAS_POSIX_RE=0' '-DGTEST_LANG_CXX11=0' '-DUNIT_TEST' '-DGTEST_HAS_RTTI=0' '-DENABLE_HANDLE_ZAPPING' -I../. -I../testing/gmock/include -I../testing/gtest/include -I../include  -Wall -Werror -Wno-unused-parameter -Wno-long-long -pthread -Wno-missing-field-initializers -Wshorten-64-to-32 -Wno-format-pedantic -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -m64 -m64 -fdata-sections -ffunction-sections -O3 -fdata-sections -ffunction-sections -O3 -Wnon-virtual-dtor -fno-exceptions -fno-rtti -std=gnu++0x -MMD -MF /home/john/git/v8/out/x64.release/.deps//home/john/git/v8/out/x64.release/obj.target/unittests/test/unittests/compiler/loop-peeling-unittest.o.d.raw  -c -o /home/john/git/v8/out/x64.release/obj.target/unittests/test/unittests/compiler/loop-peeling-unittest.o ../test/unittests/compiler/loop-peeling-unittest.cc
/home/john/git/v8/out/x64.release/obj.target/unittests/test/unittests/compiler/loop-peeling-unittest.o: \
  ../test/unittests/compiler/loop-peeling-unittest.cc \
  .././src/compiler/access-builder.h \
  .././src/compiler/simplified-operator.h \
  .././src/compiler/machine-type.h .././src/base/bits.h \
  .././src/base/macros.h .././src/base/build_config.h \
  .././include/v8config.h .././src/base/compiler-specific.h \
  .././src/base/logging.h .././src/globals.h .././src/signature.h \
  .././src/zone.h .././src/allocation.h .././src/hashmap.h \
  .././src/utils.h .././include/v8.h ../include/v8-version.h \
  .././src/base/platform/platform.h .././src/base/platform/mutex.h \
  .././src/base/lazy-instance.h .././src/base/once.h \
  .././src/base/atomicops.h .././src/base/atomicops_internals_x86_gcc.h \
  .././src/base/platform/semaphore.h .././src/list.h .././src/checks.h \
  .././src/vector.h .././src/splay-tree.h .././src/handles.h \
  .././src/base/functional.h .././src/objects.h .././src/assert-scope.h \
  .././src/bailout-reason.h .././src/base/smart-pointers.h \
  .././src/builtins.h .././src/elements-kind.h .././src/field-index.h \
  .././src/property-details.h .././src/flags.h \
  .././src/flag-definitions.h .././src/unicode.h \
  .././src/unicode-decoder.h .././src/compiler/graph.h \
  .././src/zone-containers.h .././src/zone-allocator.h \
  .././src/compiler/graph-visualizer.h .././src/compiler/js-graph.h \
  .././src/compiler/common-node-cache.h .././src/compiler/node-cache.h \
  .././src/compiler/common-operator.h .././src/compiler/frame-states.h \
  .././src/compiler/js-operator.h .././src/runtime/runtime.h \
  .././src/compiler/machine-operator.h .././src/base/flags.h \
  .././src/compiler/node-properties.h .././src/compiler/node.h \
  .././src/compiler/opcodes.h .././src/compiler/operator.h \
  .././src/types.h .././src/conversions.h .././src/ostreams.h \
  .././src/isolate.h .././include/v8-debug.h .././src/cancelable-task.h \
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
  .././src/compiler/loop-peeling.h .././src/compiler/loop-analysis.h \
  .././src/base/iterator.h \
  .././test/unittests/compiler/compiler-test-utils.h \
  .././testing/gtest/include/gtest/gtest.h \
  ../testing/gtest/include/gtest/internal/gtest-internal.h \
  ../testing/gtest/include/gtest/internal/gtest-port.h \
  ../testing/gtest/include/gtest/internal/gtest-port-arch.h \
  ../testing/gtest/include/gtest/internal/custom/gtest-port.h \
  ../testing/gtest/include/gtest/gtest-message.h \
  ../testing/gtest/include/gtest/internal/gtest-string.h \
  ../testing/gtest/include/gtest/internal/gtest-filepath.h \
  ../testing/gtest/include/gtest/internal/gtest-type-util.h \
  ../testing/gtest/include/gtest/gtest-death-test.h \
  ../testing/gtest/include/gtest/internal/gtest-death-test-internal.h \
  ../testing/gtest/include/gtest/gtest-param-test.h \
  ../testing/gtest/include/gtest/internal/gtest-param-util.h \
  ../testing/gtest/include/gtest/internal/gtest-linked_ptr.h \
  ../testing/gtest/include/gtest/gtest-printers.h \
  ../testing/gtest/include/gtest/internal/custom/gtest-printers.h \
  ../testing/gtest/include/gtest/internal/gtest-param-util-generated.h \
  ../testing/gtest/include/gtest/gtest_prod.h \
  ../testing/gtest/include/gtest/gtest-test-part.h \
  ../testing/gtest/include/gtest/gtest-typed-test.h \
  ../testing/gtest/include/gtest/gtest_pred_impl.h \
  .././test/unittests/compiler/graph-unittest.h \
  .././src/compiler/typer.h .././test/unittests/test-utils.h \
  .././src/base/utils/random-number-generator.h \
  .././testing/gtest-support.h .././testing/gmock/include/gmock/gmock.h \
  ../testing/gmock/include/gmock/gmock-actions.h \
  ../testing/gmock/include/gmock/internal/gmock-internal-utils.h \
  ../testing/gmock/include/gmock/internal/gmock-generated-internal-utils.h \
  ../testing/gmock/include/gmock/internal/gmock-port.h \
  ../testing/gmock/include/gmock/internal/custom/gmock-port.h \
  ../testing/gmock/include/gmock/gmock-cardinalities.h \
  ../testing/gmock/include/gmock/gmock-generated-actions.h \
  ../testing/gmock/include/gmock/internal/custom/gmock-generated-actions.h \
  ../testing/gmock/include/gmock/gmock-generated-function-mockers.h \
  ../testing/gmock/include/gmock/gmock-spec-builders.h \
  ../testing/gmock/include/gmock/gmock-matchers.h \
  ../testing/gmock/include/gmock/internal/custom/gmock-matchers.h \
  ../testing/gmock/include/gmock/gmock-generated-nice-strict.h \
  ../testing/gmock/include/gmock/gmock-generated-matchers.h \
  ../testing/gmock/include/gmock/gmock-more-actions.h \
  ../testing/gmock/include/gmock/gmock-more-matchers.h \
  .././test/unittests/compiler/node-test-utils.h \
  .././testing/gmock-support.h
../test/unittests/compiler/loop-peeling-unittest.cc:
.././src/compiler/access-builder.h:
.././src/compiler/simplified-operator.h:
.././src/compiler/machine-type.h:
.././src/base/bits.h:
.././src/base/macros.h:
.././src/base/build_config.h:
.././include/v8config.h:
.././src/base/compiler-specific.h:
.././src/base/logging.h:
.././src/globals.h:
.././src/signature.h:
.././src/zone.h:
.././src/allocation.h:
.././src/hashmap.h:
.././src/utils.h:
.././include/v8.h:
../include/v8-version.h:
.././src/base/platform/platform.h:
.././src/base/platform/mutex.h:
.././src/base/lazy-instance.h:
.././src/base/once.h:
.././src/base/atomicops.h:
.././src/base/atomicops_internals_x86_gcc.h:
.././src/base/platform/semaphore.h:
.././src/list.h:
.././src/checks.h:
.././src/vector.h:
.././src/splay-tree.h:
.././src/handles.h:
.././src/base/functional.h:
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
.././src/compiler/graph.h:
.././src/zone-containers.h:
.././src/zone-allocator.h:
.././src/compiler/graph-visualizer.h:
.././src/compiler/js-graph.h:
.././src/compiler/common-node-cache.h:
.././src/compiler/node-cache.h:
.././src/compiler/common-operator.h:
.././src/compiler/frame-states.h:
.././src/compiler/js-operator.h:
.././src/runtime/runtime.h:
.././src/compiler/machine-operator.h:
.././src/base/flags.h:
.././src/compiler/node-properties.h:
.././src/compiler/node.h:
.././src/compiler/opcodes.h:
.././src/compiler/operator.h:
.././src/types.h:
.././src/conversions.h:
.././src/ostreams.h:
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
.././src/compiler/loop-peeling.h:
.././src/compiler/loop-analysis.h:
.././src/base/iterator.h:
.././test/unittests/compiler/compiler-test-utils.h:
.././testing/gtest/include/gtest/gtest.h:
../testing/gtest/include/gtest/internal/gtest-internal.h:
../testing/gtest/include/gtest/internal/gtest-port.h:
../testing/gtest/include/gtest/internal/gtest-port-arch.h:
../testing/gtest/include/gtest/internal/custom/gtest-port.h:
../testing/gtest/include/gtest/gtest-message.h:
../testing/gtest/include/gtest/internal/gtest-string.h:
../testing/gtest/include/gtest/internal/gtest-filepath.h:
../testing/gtest/include/gtest/internal/gtest-type-util.h:
../testing/gtest/include/gtest/gtest-death-test.h:
../testing/gtest/include/gtest/internal/gtest-death-test-internal.h:
../testing/gtest/include/gtest/gtest-param-test.h:
../testing/gtest/include/gtest/internal/gtest-param-util.h:
../testing/gtest/include/gtest/internal/gtest-linked_ptr.h:
../testing/gtest/include/gtest/gtest-printers.h:
../testing/gtest/include/gtest/internal/custom/gtest-printers.h:
../testing/gtest/include/gtest/internal/gtest-param-util-generated.h:
../testing/gtest/include/gtest/gtest_prod.h:
../testing/gtest/include/gtest/gtest-test-part.h:
../testing/gtest/include/gtest/gtest-typed-test.h:
../testing/gtest/include/gtest/gtest_pred_impl.h:
.././test/unittests/compiler/graph-unittest.h:
.././src/compiler/typer.h:
.././test/unittests/test-utils.h:
.././src/base/utils/random-number-generator.h:
.././testing/gtest-support.h:
.././testing/gmock/include/gmock/gmock.h:
../testing/gmock/include/gmock/gmock-actions.h:
../testing/gmock/include/gmock/internal/gmock-internal-utils.h:
../testing/gmock/include/gmock/internal/gmock-generated-internal-utils.h:
../testing/gmock/include/gmock/internal/gmock-port.h:
../testing/gmock/include/gmock/internal/custom/gmock-port.h:
../testing/gmock/include/gmock/gmock-cardinalities.h:
../testing/gmock/include/gmock/gmock-generated-actions.h:
../testing/gmock/include/gmock/internal/custom/gmock-generated-actions.h:
../testing/gmock/include/gmock/gmock-generated-function-mockers.h:
../testing/gmock/include/gmock/gmock-spec-builders.h:
../testing/gmock/include/gmock/gmock-matchers.h:
../testing/gmock/include/gmock/internal/custom/gmock-matchers.h:
../testing/gmock/include/gmock/gmock-generated-nice-strict.h:
../testing/gmock/include/gmock/gmock-generated-matchers.h:
../testing/gmock/include/gmock/gmock-more-actions.h:
../testing/gmock/include/gmock/gmock-more-matchers.h:
.././test/unittests/compiler/node-test-utils.h:
.././testing/gmock-support.h:
