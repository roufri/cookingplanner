package com.roufri.cookingplanner.model
import com.fasterxml.jackson.annotation.JsonIgnore
import jakarta.persistence.*
import java.io.Serializable

@Entity
data class RecipeIngredient(
    @EmbeddedId
    val id: RecipeIngredientId = RecipeIngredientId(),

    @ManyToOne
    @MapsId("recipeId")
    @JsonIgnore // Prevent serialization of the recipe reference in RecipeIngredient
    val recipe: Recipe,

    @ManyToOne
    @MapsId("ingredientId")
    val ingredient: Ingredient,

    val quantity: Double,

    val unit: String
)

@Embeddable
data class RecipeIngredientId(
    val recipeId: Long = 0,
    val ingredientId: Long = 0
) : Serializable
