// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract MatrixOperations {
    // Function to add two matrices
    function addMatrices(int[][] memory matrix1, int[][] memory matrix2) public pure returns (int[][] memory result) {
        require(matrix1.length == matrix2.length, "Matrices must have the same number of rows");
        require(matrix1[0].length == matrix2[0].length, "Matrices must have the same number of columns");
        uint rows = matrix1.length;
        uint cols = matrix1[0].length;
        result = new int[][](rows);
        for (uint i = 0; i < rows; i++) {
            result[i] = new int[](cols);
            for (uint j = 0; j < cols; j++) {
                result[i][j] = matrix1[i][j] + matrix2[i][j];
            }
        }
    }
    // Function to subtract two matrices
    function subtractMatrices(int[][] memory matrix1, int[][] memory matrix2) public pure returns (int[][] memory result) {
        require(matrix1.length == matrix2.length, "Matrices must have the same number of rows");
        require(matrix1[0].length == matrix2[0].length, "Matrices must have the same number of columns");
        uint rows = matrix1.length;
        uint cols = matrix1[0].length;

        result = new int[][](rows);
        for (uint i = 0; i < rows; i++) {
            result[i] = new int[](cols);
            for (uint j = 0; j < cols; j++) {
                result[i][j] = matrix1[i][j] - matrix2[i][j];
            }
        }
    }
    // Function to multiply two matrices
    function multiplyMatrices(int[][] memory matrix1, int[][] memory matrix2) public pure returns (int[][] memory result) {
        uint rows1 = matrix1.length;
        uint cols1 = matrix1[0].length;
        uint rows2 = matrix2.length;
        uint cols2 = matrix2[0].length;
        require(cols1 == rows2, "Number of columns in first matrix must be equal to number of rows in second matrix");
        result = new int[][](rows1);
        for (uint i = 0; i < rows1; i++) {
            result[i] = new int[](cols2);
            for (uint j = 0; j < cols2; j++) {
                result[i][j] = 0;
                for (uint k = 0; k < cols1; k++) {
                    result[i][j] += matrix1[i][k] * matrix2[k][j];
                }
            }
        }
    }
}



