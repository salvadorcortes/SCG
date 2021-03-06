<#--
 * Copyright (c) Open Source Strategies, Inc.
 *
 * Opentaps is free software: you can redistribute it and/or modify it
 * under the terms of the GNU Affero General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Opentaps is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with Opentaps.  If not, see <http://www.gnu.org/licenses/>.
 *  
-->

<@import location="component://opentaps-common/webapp/common/includes/lib/opentapsFormMacros.ftl"/>
<form method="POST" name="createOperacionDiariaIngresos" action="${creaOpDiariaIngresos}"> <#-- action set by the screen -->
  <input type="hidden" name="organizationPartyId" value="${organizationPartyId}"/>
  <div class="form" style="border:0">
    <table class="fourColumnForm" style="border:0">
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialDocumentType />
        <@inputSelectCell list=listDocumentos?if_exists displayField="descripcion" name="Tipo_Documento" default=idTipoDoc?if_exists key="idTipoDoc" 
        			onChange="opentaps.getTipoFiscalByDoc(this,'Tipo_Fiscal');" />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsTransactionDate />
        <@inputDateTimeCell name="Fecha_Transaccion" default=Static["org.ofbiz.base.util.UtilDateTime"].nowTimestamp() />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsAccountigDate />
        <@inputDateTimeCell name="Fecha_Contable" default=Static["org.ofbiz.base.util.UtilDateTime"].nowTimestamp() />
      </tr>      
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsReferenceDocument titleClass="requiredField"/>
        <@inputTextCell name="Referencia_Documento" maxlength=60  />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsSequence titleClass="requiredField"/>
        <@inputTextCell name="Secuencia" maxlength=20  />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsKeyBudget titleClass="requiredField"/>
        <@inputTextCell name="Cve_Presupuestal" maxlength=100   />
      </tr>      
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsProductCredit />
        <@inputSelectCell list=listProducts?if_exists displayField="description" name="Id_Producto_Abono" default=productId?if_exists key="productId" required=false />
      </tr>
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsProductDebit />
        <@inputSelectCell list=listProducts?if_exists displayField="description" name="Id_Producto_Cargo" default=productId?if_exists key="productId" required=false />
      </tr>      
      <tr>
        <@displayTitleCell title=uiLabelMap.FinancialsN5 titleClass="requiredField"/>
        <@inputSelectCell list=listN5?if_exists displayField="description" name="N5" default=productCategoryId?if_exists key="productCategoryId" />
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsFederalEntity titleClass="requiredField"/>
      	<@padresGeo name="EntidadFederativa" geoCode="MEX" hijoName="Region" nietos="Municipio,Localidad"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsRegion titleClass="requiredField"/>
      	<@padresGeo name="Region" hijoName="Municipio" nietos="Localidad"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsTown titleClass="requiredField"/>
      	<@padresGeo name="Municipio" hijoName="Localidad"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsLocality titleClass="requiredField"/>
      	<@padresGeo name="Localidad" />
      </tr>  
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsUnderSpecificSource titleClass="requiredField"/>
        <@inputSelectCell list=listaSubfuente?if_exists displayField="description" name="Sub_Fuente_Especifica" default=enumId?if_exists key="enumId"/>
      </tr>
      <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsExecutingUnit titleClass="requiredField"/>
        <@inputSelectCell list=listaUnidades?if_exists displayField="groupName" name="Unidad_Ejecutora" default=partyId?if_exists key="partyId"/>
      </tr>
     <tr>
      	<@displayTitleCell title=uiLabelMap.FinancialsIdLeviedD />
      	<@inputSelectCell list=listPayments?if_exists name="Id_RecaudadoH" displayField="description" default=paymentMethodId?if_exists key="paymentMethodId" required=false/>
      </tr>                                                                  
      <tr>                             
      <tr>
        <@displayTitleCell title=uiLabelMap.CommonAmount  titleClass="requiredField"/>
        <@inputTextCell size="10" name="Monto" />
      </tr>
      <@inputSubmitRow title=uiLabelMap.CommonCreate />
    </table>
  </div>
</form>
