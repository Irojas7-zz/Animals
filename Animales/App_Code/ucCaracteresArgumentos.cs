using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de ucCaracteresArgumentos
/// </summary>
public class ucCaracteresArgumentos : EventArgs
{
    private ucCaracteresResultados txtUserControl;

	public ucCaracteresResultados TxtUserControl
	{
		get { return txtUserControl;}
		//set { txtUserControl = value;}
	}
	
	public ucCaracteresArgumentos(ucCaracteresResultados txt)
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
        txtUserControl = txt;
	}
}