package com.roufri.cookingplanner.controller

import com.roufri.cookingplanner.model.Recipe
import com.roufri.cookingplanner.service.RecipeService
import org.springframework.web.bind.annotation.*

@CrossOrigin(origins = ["http://localhost:3000"]) // Allow requests from React app
@RestController
@RequestMapping("/api/recipes")
class RecipeController(private val recipeService: RecipeService) {

    @GetMapping
    fun getAllRecipes(): List<Recipe> = recipeService.getAllRecipes()

    @PostMapping
    fun createRecipe(@RequestBody recipe: Recipe): Recipe = recipeService.saveRecipe(recipe)

    @GetMapping("/random")
    fun getRandomRecipes(@RequestParam(defaultValue = "1") count: Int): List<Recipe> {
        return recipeService.getRandomRecipes(count)
    }

    @GetMapping("/ingredients")
    fun getAggregatedIngredients(@RequestParam recipeIds: List<Long>): List<Map<String, Any>> {
        return recipeService.getAggregatedIngredients(recipeIds)
    }
}