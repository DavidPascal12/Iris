/// 
Class cysnet.david.bp.MiProceso Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='cysnet.david.ws.msg.ObtenerPersonaRequest' response='cysnet.david.ws.msg.ObtenerPersonaResponse' height='2000' width='2000' >
<sequence xend='200' yend='600' >
<if name='¿ID &gt; 0?' condition='request.idPersona &gt; 0' xpos='200' ypos='250' xend='200' yend='500' >
<true>
<call name='Obtener Persona' target='DBCache' async='0' xpos='470' ypos='400' >
<request type='cysnet.david.ws.msg.ObtenerPersonaRequest' >
<assign property="callrequest.idPersona" value="request.idPersona" action="set" />
</request>
<response type='cysnet.david.ws.msg.ObtenerPersonaResponse' >
<assign property="response.apellidos" value="callresponse.apellidos" action="set" />
<assign property="response.nombre" value="callresponse.nombre" action="set" />
<assign property="response.direccion" value="callresponse.direccion" action="set" />
<assign property="response.codigoPostal" value="callresponse.codigoPostal" action="set" />
<assign property="response.mensaje" value="callresponse.mensaje" action="set" />
</response>
</call>
</true>
<false>
    <assign property="response.mensaje" value='"Este es el mensaje de error"' action="set" />
</false>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
