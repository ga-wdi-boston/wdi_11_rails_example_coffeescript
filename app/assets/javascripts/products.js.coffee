# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class Product
  constructor: (@name, @description, @price)->
    console.log "Created a product with a name #{@name}"

  hideProduct: (@id) ->
    $("#{@id}").hide()

  insert: ->
    $('#products').append("<tr id='product-6'><td>#{@name}</td><td>#{@description}</td><td>#{@price}</td></tr>")


$ ->
  productNew = new Product("Coat", "Big ugly coat", "1.33")
  productNew.insert()