<?php

class PizzaPi
{
    public function calculateDoughRequirement($pizzas, $persons)
    {
        return $pizzas * ($persons * 20 + 200);
    }

    public function calculateSauceRequirement($pizzas, $sauce_can_vol)
    {
        return ($pizzas * 125) / $sauce_can_vol;
    }

    public function calculateCheeseCubeCoverage(
        $cheese_side_len,
        $thickness,
        $diameter,
    ) {
        return round(
            $cheese_side_len ** 3 / ($thickness * M_PI * $diameter),
            0,
            RoundingMode::TowardsZero,
        );
    }

    public function calculateLeftOverSlices($pizzas, $friends)
    {
        return ($pizzas * 8) % $friends;
    }
}
