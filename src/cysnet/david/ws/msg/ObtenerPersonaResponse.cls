Class cysnet.david.ws.msg.ObtenerPersonaResponse Extends Ens.Response
{

Property nombre As %String;

Property apellidos As %String;

Property direccion As %String;

Property codigoPostal As %Integer;

Property mensaje As %String;

Storage Default
{
<Data name="ObtenerPersonaResponseDefaultData">
<Subscript>"ObtenerPersonaResponse"</Subscript>
<Value name="1">
<Value>nombre</Value>
</Value>
<Value name="2">
<Value>apellidos</Value>
</Value>
<Value name="3">
<Value>direccion</Value>
</Value>
<Value name="4">
<Value>codigoPostal</Value>
</Value>
<Value name="5">
<Value>mensjae</Value>
</Value>
<Value name="6">
<Value>mensaje</Value>
</Value>
</Data>
<DefaultData>ObtenerPersonaResponseDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
