package Beans;



public class Alumno {

  private String idAlumno;
  private String nombre;
  private String apellidoPat;
  private String apellidoMat;
  private String fechaNac;
  private String nivelProgreso;
  private String seccion;
  private String codPadre;
  
  public String getIdAlumno() {
	 return idAlumno;
  }
  public void setIdAlumno(String idAlumno) {
	 this.idAlumno = idAlumno;
  }
  public String getNombre() {
	 return nombre;
  }
  public void setNombre(String nombre) {
	 this.nombre = nombre;
  }
  public String getCodPadre() {
	  return codPadre;
  }
  public void setCodPadre(String codPadre) {
	 this.codPadre = codPadre;
  }
  public String getApellidoPat() {
	 return apellidoPat;
  }
  public void setApellidoPat(String apellidoPat) { 
	 this.apellidoPat = apellidoPat;
  }
  public String getApellidoMat() {
	return apellidoMat;
  } 
  public void setApellidoMat(String apellidoMat) {
    	this.apellidoMat = apellidoMat;
  }
  public String getFechaNac() {
	 return fechaNac;
  }
  public void setFechaNac(String fechaNac) {
 	  this.fechaNac = fechaNac;
  }

  
  public String getNivelProgreso() {
	return nivelProgreso;
  }
  public void setNivelProgreso(String nivelProgreso) {
	this.nivelProgreso = nivelProgreso;
  }
  
  public String getSeccion() {
	 return seccion;
  }
  public void setSeccion(String seccion) {
	 this.seccion = seccion;
  }
 
  
  
  
}
