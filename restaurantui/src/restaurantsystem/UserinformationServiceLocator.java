/**
 * UserinformationServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package restaurantsystem;

public class UserinformationServiceLocator extends org.apache.axis.client.Service implements restaurantsystem.UserinformationService {

    public UserinformationServiceLocator() {
    }


    public UserinformationServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public UserinformationServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for userinformation
    private java.lang.String userinformation_address = "http://localhost:8081/restaurant/services/userinformation";

    public java.lang.String getuserinformationAddress() {
        return userinformation_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String userinformationWSDDServiceName = "userinformation";

    public java.lang.String getuserinformationWSDDServiceName() {
        return userinformationWSDDServiceName;
    }

    public void setuserinformationWSDDServiceName(java.lang.String name) {
        userinformationWSDDServiceName = name;
    }

    public restaurantsystem.Userinformation getuserinformation() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(userinformation_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getuserinformation(endpoint);
    }

    public restaurantsystem.Userinformation getuserinformation(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            restaurantsystem.UserinformationSoapBindingStub _stub = new restaurantsystem.UserinformationSoapBindingStub(portAddress, this);
            _stub.setPortName(getuserinformationWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setuserinformationEndpointAddress(java.lang.String address) {
        userinformation_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (restaurantsystem.Userinformation.class.isAssignableFrom(serviceEndpointInterface)) {
                restaurantsystem.UserinformationSoapBindingStub _stub = new restaurantsystem.UserinformationSoapBindingStub(new java.net.URL(userinformation_address), this);
                _stub.setPortName(getuserinformationWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("userinformation".equals(inputPortName)) {
            return getuserinformation();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://restaurantsystem", "userinformationService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://restaurantsystem", "userinformation"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("userinformation".equals(portName)) {
            setuserinformationEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
