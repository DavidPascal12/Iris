Class cysnet.david.ws.msg.ObtenerPersonaRequest Extends Ens.Request
{

Property idPersona As %Integer;

Storage Default
{
<Data name="ObtenerPersonaRequestDefaultData">
<Subscript>"ObtenerPersonaRequest"</Subscript>
<Value name="1">
<Value>idPersona</Value>
</Value>
<Value name="2">
<Value>nombre</Value>
</Value>
</Data>
<DefaultData>ObtenerPersonaRequestDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
