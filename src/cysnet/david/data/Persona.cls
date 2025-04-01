Class cysnet.david.data.Persona Extends %Persistent
{

Property idPersona As %Integer [ Identity ];

// ID autoincremental

Property nombre As %String;

Property apellidos As %String;

Property direccion As %String;

Property codigoPostal As %Integer;

Index IDPersonaIndex On idPersona;

/// Método para poblar datos de ejemplo
ClassMethod PoblarDatos()
{
        Set persona1 = ##class(cysnet.david.data.Persona).%New()
        Set persona1.nombre = "juan"
        Set persona1.apellidos = "perez"
        Set persona1.direccion = "Barcelona"
        Set persona1.codigoPostal = 123456
        Do persona1.%Save()

        Set persona2 = ##class(cysnet.david.data.Persona).%New()
        Set persona2.nombre = "maria"
        Set persona2.apellidos = "gomez"
        Set persona2.direccion = "Andalucia"
        Set persona2.codigoPostal = 12345678
        Do persona2.%Save()

        Set persona3 = ##class(cysnet.david.data.Persona).%New()
        Set persona3.nombre = "carlos"
        Set persona3.apellidos = "lopez"
        Set persona3.direccion = "Extremadura"
        Set persona3.codigoPostal = 345678
        Do persona3.%Save()

        Set persona4 = ##class(cysnet.david.data.Persona).%New()
        Set persona4.nombre = "laura"
        Set persona4.apellidos = "rodriguez"
        Set persona4.direccion = "Atapulco"
        Set persona4.codigoPostal = 1344546
        Do persona4.%Save()
}

Storage Default
{
<Data name="PersonaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>nombre</Value>
</Value>
<Value name="3">
<Value>apellidos</Value>
</Value>
<Value name="4">
<Value>direccion</Value>
</Value>
<Value name="5">
<Value>codigoPostal</Value>
</Value>
</Data>
<DataLocation>^cysnet.david.data.PersonaD</DataLocation>
<DefaultData>PersonaDefaultData</DefaultData>
<IdLocation>^cysnet.david.data.PersonaD</IdLocation>
<IndexLocation>^cysnet.david.data.PersonaI</IndexLocation>
<StreamLocation>^cysnet.david.data.PersonaS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
