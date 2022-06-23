#!/usr/bin/env python3

# SOLUTION 1

from interval import interval

month = 0
year = {
    interval(1, 3): "inicio",
    interval(4, 6): "primeira",
    interval(7, 9): "segunda",
    interval(10, 12): "final",
}

result = {k: v for k, v in year.items() if month in k}
result = next(iter(result.values()))
print(result or "assetou mizeravi!")
