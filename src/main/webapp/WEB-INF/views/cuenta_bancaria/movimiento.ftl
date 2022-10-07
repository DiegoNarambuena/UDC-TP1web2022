
<#if error??>
<h2> Error en la transaccion </h2>
<#else>
    <h2> Transaccion </h2>
        <table border="1" style="padding: 2px;">
            <tr><th>Cuenta Origen: </th> <td>${origen.nroCuenta}</td><td>${origen.saldo}</td></tr>
            <tr><th>Cuenta Destino: </th> <td>${destino.nroCuenta}</td><td>${destino.saldo}</td></tr>
            <tr><th>Monto:</th><td>${monto}</td></tr>
        </table>
</#if> 
<a href="${context_path}/cuenta_bancaria/">Volver</a>