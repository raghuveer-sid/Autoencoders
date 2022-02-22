# Autoencoders

# Task 1: Autoencoders
Autoencoders are a specific type of feed forward neural networks where the input is the same as the
output. They compress the input into a lower-dimensional code and then reconstruct the output from this
representation. The code is a compact “summary” or “compression” of the input, also called the latentspace representation. An auto encoder consists of 3 components: encoder, code and decoder. The encoder compresses the input and produces the code, the decoder then reconstructs the input only using this code.

- In the end, Autoencoders are a very useful dimensionality reduction technique. They are very popular
as a teaching material in introductory deep learning courses, most likely due to their simplicity.
