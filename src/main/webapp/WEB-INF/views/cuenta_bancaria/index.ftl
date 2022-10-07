<h2>Datos Contacto</h2>

<h2>Cuenta origen</h2>
        
        <p>Nro Cuenta         Saldo</p>
        <form method = "POST" action ="${context_path}/cuenta_bancaria/movimiento"/>
        <select name="origen" required>
           <#list cuentas as item>
                <option value="${item.id}"> ${item.nroCuenta} ${item.saldo}</option>
           </#list>
        </select>
    
        <p>Cuenta Destino</p>
        <p>Nro Cuenta   Saldo</p>
        <select name="destino" required>
           <#list cuentas as item>
                <option value="${item.id}"> ${item.nroCuenta} ${item.saldo}</option>
           </#list>
        </select>
        
        <p>Monto a transferir</p>
        <input type="number" name="monto" min="0" required>
        <input type ="submit" value = "enviar"></input>
        </form>


        
        