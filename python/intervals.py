#!/usr/bin/env python3

# Description: Switch cases to Pattern matching

# SOLUTION 1

month = 0
year = {
    range(1, 3): "inicio",
    range(4, 6): "primeira",
    range(7, 9): "segunda",
    range(10, 12): "final",
}

result = {k: v for k, v in year.items() if month in k}
result = next(iter(result.values())) if result else "assetou mizeravi!"
print(result)
