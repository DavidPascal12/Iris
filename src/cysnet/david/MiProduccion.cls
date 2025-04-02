Class cysnet.david.MiProduccion Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="cysnet.david.MiProduccion" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="MiServicio" Category="" ClassName="cysnet.david.ws.MiServicio" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="Port">1980</Setting>
  </Item>
  <Item Name="DBCache" Category="" ClassName="cysnet.david.ws.bo.DBCache" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="MiProceso" Category="" ClassName="cysnet.david.bp.MiProceso" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
