package com.roufri.cookingplanner.repository

import com.roufri.cookingplanner.model.RecipeIngredient
import com.roufri.cookingplanner.model.RecipeIngredientId
import org.springframework.data.jpa.repository.JpaRepository

interface RecipeIngredientRepository : JpaRepository<RecipeIngredient, RecipeIngredientId>
