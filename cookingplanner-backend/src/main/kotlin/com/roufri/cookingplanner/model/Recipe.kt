package com.roufri.cookingplanner.model

import jakarta.persistence.*

@Entity
data class Recipe(
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long? = null,
    val title: String,
    val ingredients: String,
    val instructions: String
)