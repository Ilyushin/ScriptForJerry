cmd_/home/john/git/v8/out/x64.release/cctest := /home/john/git/v8/third_party/llvm-build/Release+Asserts/bin/clang++ -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -pthread -fuse-ld=gold -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -fuse-ld=gold -B/home/john/git/v8/third_party/binutils/Linux_x64/Release/bin -m64 -m64  -o /home/john/git/v8/out/x64.release/cctest -Wl,--start-group /home/john/git/v8/out/x64.release/obj.target/cctest/gen/resources.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/codegen-tester.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-basic-block-profiler.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-branch-combine.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-changes-lowering.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-gap-resolver.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-graph-visualizer.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-instruction.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-js-context-specialization.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-js-constant-cache.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-js-typed-lowering.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-jump-threading.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-linkage.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-loop-assignment-analysis.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-loop-analysis.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-machine-operator-reducer.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-node.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-operator.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-osr.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-pipeline.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-representation-change.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-bytecode-graph-builder.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-deopt.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-inlining.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-intrinsics.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-jsbranches.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-jscalls.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-jsexceptions.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-jsobjects.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-jsops.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-machops.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-native-calls.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-properties.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-stackcheck.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-stubs.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-run-variables.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/compiler/test-simplified-lowering.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/cctest.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/expression-type-collector.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/interpreter/test-bytecode-generator.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/interpreter/test-interpreter.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/gay-fixed.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/gay-precision.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/gay-shortest.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/print-extension.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/profiler-extension.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-accessors.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-alloc.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-api.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-api-interceptors.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-array-list.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-ast.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-ast-expression-visitor.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-asm-validator.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-atomicops.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-bignum.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-bignum-dtoa.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-bit-vector.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-circular-queue.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-compiler.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-constantpool.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-conversions.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-cpu-profiler.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-date.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-debug.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-decls.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-deoptimization.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-dictionary.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-diy-fp.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-double.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-dtoa.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-fast-dtoa.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-feedback-vector.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-fixed-dtoa.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-flags.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-func-name-inference.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-gc-tracer.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-global-handles.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-global-object.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-hashing.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-hashmap.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-heap.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-heap-profiler.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-hydrogen-types.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-identity-map.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-incremental-marking.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-list.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-liveedit.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-lockers.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-log.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-microtask-delivery.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-mark-compact.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-mementos.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-migrations.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-object-observe.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-parsing.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-platform.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-profile-generator.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-random-number-generator.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-regexp.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-reloc-info.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-representation.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-sampler-api.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-serialize.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-simd.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-slots-buffer.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-spaces.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-strings.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-symbols.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-strtod.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-thread-termination.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-threads.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-transitions.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-typedarrays.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-types.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-typing-reset.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-unbound-queue.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-unboxed-doubles.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-unique.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-unscopables-hidden-prototype.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-utils.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-version.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-weakmaps.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-weaksets.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/trace-extension.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-assembler-x64.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-code-stubs.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-code-stubs-x64.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-disasm-x64.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-macro-assembler-x64.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-log-stack-tracer.o /home/john/git/v8/out/x64.release/obj.target/cctest/test/cctest/test-platform-linux.o /home/john/git/v8/out/x64.release/obj.target/tools/gyp/libv8_libplatform.a /home/john/git/v8/out/x64.release/obj.target/tools/gyp/libv8_libbase.a /home/john/git/v8/out/x64.release/obj.target/tools/gyp/libv8_base.a /home/john/git/v8/out/x64.release/obj.target/third_party/icu/libicui18n.a /home/john/git/v8/out/x64.release/obj.target/third_party/icu/libicuuc.a /home/john/git/v8/out/x64.release/obj.target/third_party/icu/libicudata.a /home/john/git/v8/out/x64.release/obj.target/tools/gyp/libv8_external_snapshot.a -Wl,--end-group -ldl -lrt
