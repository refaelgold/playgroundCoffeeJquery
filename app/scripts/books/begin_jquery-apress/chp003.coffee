#chp 003
allPragraph=$ "p"
#get the all <p> element in the document
console.log allPragraph.length
#put class for every p
allPragraph.addClass "pregraphCore"




#Speed Test

fastestChild=$("p strong").text()#first choice
console.log "did you find the child ? " +fastestChild;

console.log "did you find the child ? " +allPragraph.first().children('strong').text()#second choice

console.log "did you find the child ? " +allPragraph.first().find('strong').text()#never choice




allNavList=$ ".nav li"
#get the first argument
console.log "the first list item in nav is : " + allNavList.first().text()
console.log "the second list item in nav is : " + allNavList.eq(1).text()
console.log "the last list item in nav is : " + allNavList.last().text()




familyContainer=$ "#family"

#all stay in the family-sibiling game
console.log  $("#family span").siblings().append('--->').text()


#get the previus brother until the 5 one
console.log  $("#brother005").prevAll().text()

#get the next brother until the 5 one
console.log  $("#brother005").nextAll().text()


#get the previus brother until the 5 one INCLUDE THE ELEMENT IMSELF
console.log  $("#brother005").prevAll().andSelf().text()

#get the next brother until the 5 one INCLUDE THE ELEMENT IMSELF
console.log  $("#brother005").nextAll().andSelf().text()


#get the parent of the element brother
console.log  "who is my parent?"+$("#brother005").parent().attr("id")



#table game
mainTable=$ "#mainTable"

$('td:even').css("background-color","yellow")
$('td:odd').css("background-color","red")




$( "div.filterDiv" ).css( "background", "#c8ebcc" ).filter( ".middle" ).css( "border-color", "red" );