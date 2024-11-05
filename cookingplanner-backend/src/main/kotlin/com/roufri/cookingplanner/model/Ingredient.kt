package com.roufri.cookingplanner.model
import jakarta.persistence.*

@Entity
data class Ingredient(
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long,
    val name: String
)