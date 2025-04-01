Class cysnet.david.ws.MiServicio Extends EnsLib.SOAP.Service [ ProcedureBlock ]
{

/// Nombre de servicio web.
Parameter SERVICENAME = "MiServicio";

/// Namespace SOAP para servicio web
Parameter NAMESPACE = "http://tempuri.org";

/// Se utilizarán namespaces de clases referenciadas en WSDL.
Parameter USECLASSNAMESPACES = 1;

Method saludo(nombre As %String) As %String [ WebMethod ]
{
    Quit "Hola, " _ nombre _ "!"
}

Method obtenerPersona(idPer As %Integer) As cysnet.david.ws.msg.ObtenerPersonaResponse [ WebMethod ]
{
	#dim req As cysnet.david.ws.msg.ObtenerPersonaRequest
	#dim rsp As cysnet.david.ws.msg.ObtenerPersonaResponse
	set req = ##class(cysnet.david.ws.msg.ObtenerPersonaRequest).%New()
	set req.idPersona = idPer
	do ..SendRequestSync("DBCache", req, .rsp)
	quit rsp
}

}
