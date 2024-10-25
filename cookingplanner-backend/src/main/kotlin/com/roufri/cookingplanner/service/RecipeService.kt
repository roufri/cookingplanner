package com.roufri.cookingplanner.service

import com.roufri.cookingplanner.model.Recipe
import com.roufri.cookingplanner.repository.RecipeRepository
import org.springframework.stereotype.Service

@Service
class RecipeService(private val recipeRepository: RecipeRepository) {

    fun getRandomRecipes(count: Int): List<Recipe> {
        val allRecipes = recipeRepository.findAll()
         if (allRecipes.size <= count) { // if there are fewer recipes than 'count', duplicate list to itself until size is big enough to return 'count' elements
             var randomRecipes = emptyList<Recipe>()
             val sizeDifferenceFactor = calcSizeDifferenceFactorRoundedUp(count, allRecipes.size)
                     for (i in 0 until sizeDifferenceFactor) {
                 randomRecipes = randomRecipes + allRecipes
             }
             return randomRecipes.shuffled().take(count)
        }
        return allRecipes.shuffled().take(count) // Shuffle and take 'count' recipes
    }

    fun calcSizeDifferenceFactorRoundedUp(a: Int, b: Int) = (a + b - 1) / b
}
