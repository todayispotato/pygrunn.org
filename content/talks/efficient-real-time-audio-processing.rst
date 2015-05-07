:slug: efficient-real-time-audio-processing
:speaker: emil-loer
:year: 2015
:title: Leveraging RPython For Efficient Real-Time Audio Processing
:fulltitle: Leveraging RPython For Efficient Real-Time Audio Processing

In the design of real-time audio processing engines there is always a trade-off between performance and architectural complexity. The former requires a close to the metal programming environment while the latter approach prefers higher level programming languages, such as Python.

This talk proposes a novel hybrid approach to creating a real-time audio processing engine based on traversal of a topologically sorted audio graph. Using the capabilities of the RPython tracing JIT compiler (the core of the PyPy project) an engine can be designed that is both performant and easy to work with.
