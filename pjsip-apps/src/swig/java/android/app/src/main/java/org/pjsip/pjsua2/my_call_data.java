/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.12
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package org.pjsip.pjsua2;

public class my_call_data {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected my_call_data(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(my_call_data obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        pjsua2JNI.delete_my_call_data(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public void setPool(SWIGTYPE_p_pj_pool_t value) {
    pjsua2JNI.my_call_data_pool_set(swigCPtr, this, SWIGTYPE_p_pj_pool_t.getCPtr(value));
  }

  public SWIGTYPE_p_pj_pool_t getPool() {
    long cPtr = pjsua2JNI.my_call_data_pool_get(swigCPtr, this);
    return (cPtr == 0) ? null : new SWIGTYPE_p_pj_pool_t(cPtr, false);
  }

  public void setTonegen(SWIGTYPE_p_pjmedia_port value) {
    pjsua2JNI.my_call_data_tonegen_set(swigCPtr, this, SWIGTYPE_p_pjmedia_port.getCPtr(value));
  }

  public SWIGTYPE_p_pjmedia_port getTonegen() {
    long cPtr = pjsua2JNI.my_call_data_tonegen_get(swigCPtr, this);
    return (cPtr == 0) ? null : new SWIGTYPE_p_pjmedia_port(cPtr, false);
  }

  public void setToneslot(SWIGTYPE_p_pjsua_conf_port_id value) {
    pjsua2JNI.my_call_data_toneslot_set(swigCPtr, this, SWIGTYPE_p_pjsua_conf_port_id.getCPtr(value));
  }

  public SWIGTYPE_p_pjsua_conf_port_id getToneslot() {
    return new SWIGTYPE_p_pjsua_conf_port_id(pjsua2JNI.my_call_data_toneslot_get(swigCPtr, this), true);
  }

  public my_call_data() {
    this(pjsua2JNI.new_my_call_data(), true);
  }

}
