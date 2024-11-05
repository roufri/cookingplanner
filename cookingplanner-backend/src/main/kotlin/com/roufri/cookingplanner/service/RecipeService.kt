package com.roufri.cookingplanner.service

import com.roufri.cookingplanner.model.Recipe
import com.roufri.cookingplanner.repository.IngredientRepository
import com.roufri.cookingplanner.repository.RecipeIngredientRepository
import com.roufri.cookingplanner.repository.RecipeRepository
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class RecipeService(
    private val recipeRepository: RecipeRepository,
    private val ingredientRepository: IngredientRepository,
    private val recipeIngredientRepository: RecipeIngredientRepository
) {

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

    fun getAllRecipes(): List<Recipe> = recipeRepository.findAll()

    @Transactional
    fun saveRecipe(recipe: Recipe): Recipe = recipeRepository.save(recipe)

    fun getAggregatedIngredients(recipeIds: List<Long>): List<Map<String, Any>> {
        return recipeIngredientRepository.findAll()
            .filter { it.recipe.id in recipeIds }
            .groupBy { it.ingredient.name }
            .map { (name, recipeIngredients) ->
                mapOf(
                    "ingredient" to name,
                    "quantity" to recipeIngredients.sumOf { it.quantity },
                    "unit" to recipeIngredients.first().unit
                )
            }
    }
}
