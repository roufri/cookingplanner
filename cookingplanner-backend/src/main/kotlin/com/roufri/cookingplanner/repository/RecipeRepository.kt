package com.roufri.cookingplanner.repository

import com.roufri.cookingplanner.model.Recipe
import org.springframework.data.jpa.repository.JpaRepository

interface RecipeRepository : JpaRepository<Recipe, Long>