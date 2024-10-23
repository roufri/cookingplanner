package com.roufri.cookingplanner.controller

import com.roufri.cookingplanner.model.Recipe
import com.roufri.cookingplanner.repository.RecipeRepository
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@CrossOrigin(origins = ["http://localhost:3000"]) // Allow requests from React app
@RestController
@RequestMapping("/api/recipes")
class RecipeController(private val recipeRepository: RecipeRepository) {

    @GetMapping
    fun getAllRecipes(): List<Recipe> = recipeRepository.findAll()

    @PostMapping
    fun createRecipe(@RequestBody recipe: Recipe): ResponseEntity<Recipe> {
        val savedRecipe = recipeRepository.save(recipe)
        return ResponseEntity(savedRecipe, HttpStatus.CREATED)
    }

    // Add other CRUD operations as needed (GET by ID, UPDATE, DELETE)
}