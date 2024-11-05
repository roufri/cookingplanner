package com.roufri.cookingplanner.repository

import com.roufri.cookingplanner.model.Ingredient
import org.springframework.data.jpa.repository.JpaRepository

interface IngredientRepository : JpaRepository<Ingredient, Long>
