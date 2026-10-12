[Try it online](https://ebmtranceboy.github.io/test/)

# purescript-numberfield

Exact computation in extension fields of ℚ, in Haskell.

- Arithmetic (including inversion) in ℚ(α₀, α₁, …) for algebraic numbers given by their minimal polynomials
- Minimal polynomial of a sum of algebraic numbers
- Primitive element: express each αᵢ as a polynomial in the sum (`toPrimitive`)

Built on [purescript-sparse-polynomials](https://pursuit.purescript.org/packages/purescript-sparse-polynomials)
and JavaScript BigInt (exact arithmetic, runs in the browser).

📖 Tutorial: https://preuve.github.io/numberfield/
📚 API docs: https://pursuit.purescript.org/packages/purescript-numberfield
⚡ Haskell version (faster): [link]

## Example

Simplify (φ + 2) / (φ − 2)², with φ the golden ratio (X² − X − 1 = 0):

    fw = framework (bigOne ^ 0) [one ^ 2 - one ^ 1 - one ^ 0]
    -- ... expression definition: see the tutorial
    display ["phi"] $ run $ reifyType fw (build test1)
    -- "(11 % 1)×phi+7 % 1"

Minimal polynomial of ∛2 + √3:

    minimalPolynomial fw2
    -- X⁶ − 9X⁴ − 4X³ + 27X² − 36X − 23

## Limitations

- The polynomials you supply must be irreducible (see "Troubleshooting" in the tutorial; `factor` helps).
- Factorization tools are limited to ℤ[X] and ℚ[X].

## License
MIT
