Class cysnet.david.ws.bo.DBCache Extends Ens.BusinessOperation
{

/// Método que obtiene los datos de una persona a partir de su ID
Method obtenerPersona(pRequest As cysnet.david.ws.msg.ObtenerPersonaRequest, Output pResponse As cysnet.david.ws.msg.ObtenerPersonaResponse) As %Status
{
    set pResponse = ##class(cysnet.david.ws.msg.ObtenerPersonaResponse).%New()
    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT nombre, apellidos, direccion, codigoPostal FROM cysnet_david_data.Persona WHERE ID = "_pRequest.idPersona)
    set rs = stm.%Execute()
    if (rs.%Next()) {
        set pResponse.nombre = rs.nombre
        set pResponse.apellidos = rs.apellidos
        set pResponse.direccion = rs.direccion
        set pResponse.codigoPostal = rs.codigoPostal
    }else {
            // Si no se encuentra la persona, se añade el mensaje de error
        set pResponse.mensaje = "La persona con el ID proporcionado no existe."
    }
    quit $$$OK
}

XData MessageMap
{
<MapItems>
    <MapItem MessageType="cysnet.david.ws.msg.ObtenerPersonaRequest">
        <Method>obtenerPersona</Method>
    </MapItem>
</MapItems>
}

}
