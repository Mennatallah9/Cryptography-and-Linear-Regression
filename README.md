# Cryptography-and-Linear-Regression
## Cryptography
### Introduction
In this coursework project, we explore the application of linear algebra in cryptography. One of the simple encryption techniques we will study is the Hill cipher. The Hill cipher utilizes matrix operations and modular arithmetic for encryption and decryption of messages. Additionally, we will provide a brief explanation of modular arithmetic to better understand the workings of the Hill cipher.
### Hill Cipher
The Hill cipher is a polygraphic substitution cipher that operates on blocks of letters. It employs matrix multiplication to encrypt and decrypt messages. The key idea behind the Hill cipher is to represent each letter as a numerical value using a predetermined mapping. The plaintext is divided into blocks of fixed length, typically 2 or 3 letters, and each block is treated as a vector.

- Encryption

To encrypt a message using the Hill cipher, we perform the following steps:

1. Convert the plaintext into numerical values using the predefined mapping.
2. Represent each block of plaintext as a vector.
3. Multiply each vector by a preselected encryption matrix.
4. Take the modulo of the resulting vectors using modular arithmetic.
5. Convert the encrypted vectors back to their corresponding letters using the mapping.

- Decryption

To decrypt an encrypted message using the Hill cipher, we follow these steps:

1. Convert the encrypted message into numerical values using the predefined mapping.
2. Represent each encrypted block as a vector.
3. Multiply each vector by the inverse of the encryption matrix.
4. Take the modulo of the resulting vectors using modular arithmetic.
5. Convert the decrypted vectors back to their corresponding letters using the mapping.
### Modular Arithmetic
Modular arithmetic is an arithmetic system that deals with remainders. In the context of the Hill cipher, modular arithmetic is employed to ensure that the numerical values remain within a specific range. This range is typically the number of letters in the alphabet. The modulo operation calculates the remainder when one number is divided by another.
### MATLAB Implementation
We have provided a simple MATLAB code that implements encryption and decryption using the Hill cipher. The code takes the plaintext message and encryption key as inputs and generates the corresponding ciphertext. Similarly, it takes the ciphertext and decryption key as inputs and produces the decrypted plaintext. The code utilizes matrix operations and modular arithmetic to perform the encryption and decryption processes.
## Linear Regression
### Introduction
In the second part of this coursework project, we focus on linear regression. Linear regression is a statistical technique used to model the relationship between two variables. It involves finding the best-fitting line that minimizes the difference between the observed data points and the predicted values.
### MATLAB Implementation
We have also included a simple MATLAB code that implements linear regression for four different models: linear, exponential, power, and growth rate. The code takes the input data (x and y values) and the desired model as inputs. It then calculates the least squares fit for each model and plots the data points along with the fitted line.

The outputs of the MATLAB code include:

- A figure showing the data points and the least squares fit for the four models.
- The values of the model coefficients.
- The coefficient of determination (r^2), which measures the goodness of fit.
## Team Members
1. [Alaa Abd Elmoneim]()
2. [Haydi Mohamed](https://github.com/HaydiMohamed)
3. [Mennatallah Ashraf](https://github.com/Mennatallah9)
4. [Nada Abd Elghany]()
5. [Rahma Ahmed]()
6. [Rana Yasser](https://github.com/RanaYB)
7. [Yasmeen Alaa]()
8. [Yomna Awny](https://github.com/YomnaAwny)
