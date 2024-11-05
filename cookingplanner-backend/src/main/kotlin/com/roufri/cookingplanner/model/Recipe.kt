package com.roufri.cookingplanner.model

import jakarta.persistence.*

@Entity
data class Recipe(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long,
    val name: String,
    val instructions: String,
    @OneToMany(mappedBy = "recipe", cascade = [CascadeType.ALL], orphanRemoval = true)
    val ingredients: List<RecipeIngredient> = listOf(),
    val category:  String
)