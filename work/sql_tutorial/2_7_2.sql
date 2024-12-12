-- SELECT city FROM weather WHERE temp_lo = max(temp_lo);     間違い
SELECT city FROM weather
    WHERE temp_lo = (SELECT max(temp_lo) FROM weather);