Class cysnet.david.bp.MiProcesoCodigo Extends Ens.BusinessProcess
{

Method OnRequest(pRequest As cysnet.david.ws.msg.ObtenerPersonaRequest, Output pResponse As cysnet.david.ws.msg.ObtenerPersonaResponse) As %Status
{
    set pResponse = ##class(cysnet.david.ws.msg.ObtenerPersonaResponse).%New()
    if (pRequest.idPersona > 0) {
        do ..SendRequestSync("DBCache", pRequest, .pResponse)
    }else{
        Set pResponse = ##class(cysnet.david.ws.msg.ObtenerPersonaResponse).%New()
        Set pResponse.mensaje = "Este es el mensaje de error"
    }
    
    quit $$$OK
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
