package hamming

import (
    "errors"
)

func Distance(a, b string) (int, error) {
    if len(a) != len(b) {
        return 0, errors.New("Input strings must be of equal length.")
    }
    ham := 0
    for i := 0; i < len(a); i++ {
        if a[i] != b[i] { ham ++ }
    }
    return ham, nil
}
