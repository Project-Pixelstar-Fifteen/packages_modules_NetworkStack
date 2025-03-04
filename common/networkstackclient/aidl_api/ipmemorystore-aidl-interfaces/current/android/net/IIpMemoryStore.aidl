/*
 * Copyright (C) 2018 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL file. Do not edit it manually. There are
// two cases:
// 1). this is a frozen version file - do not edit this in any case.
// 2). this is a 'current' file. If you make a backwards compatible change to
//     the interface (from the latest frozen version), the build system will
//     prompt you to update this file with `m <name>-update-api`.
//
// You must not make a backward incompatible change to any AIDL file built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package android.net;
/* @hide */
interface IIpMemoryStore {
  oneway void storeNetworkAttributes(String l2Key, in android.net.ipmemorystore.NetworkAttributesParcelable attributes, android.net.ipmemorystore.IOnStatusListener listener);
  oneway void storeBlob(String l2Key, String clientId, String name, in android.net.ipmemorystore.Blob data, android.net.ipmemorystore.IOnStatusListener listener);
  oneway void findL2Key(in android.net.ipmemorystore.NetworkAttributesParcelable attributes, android.net.ipmemorystore.IOnL2KeyResponseListener listener);
  oneway void isSameNetwork(String l2Key1, String l2Key2, android.net.ipmemorystore.IOnSameL3NetworkResponseListener listener);
  oneway void retrieveNetworkAttributes(String l2Key, android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener listener);
  oneway void retrieveBlob(String l2Key, String clientId, String name, android.net.ipmemorystore.IOnBlobRetrievedListener listener);
  oneway void factoryReset();
  oneway void delete(String l2Key, boolean needWipe, android.net.ipmemorystore.IOnStatusAndCountListener listener);
  oneway void deleteCluster(String cluster, boolean needWipe, android.net.ipmemorystore.IOnStatusAndCountListener listener);
  oneway void storeNetworkEvent(String cluster, long timestamp, long expiry, int eventType, android.net.ipmemorystore.IOnStatusListener listener);
  oneway void retrieveNetworkEventCount(String cluster, in long[] sinceTimes, in int[] eventTypes, android.net.ipmemorystore.IOnNetworkEventCountRetrievedListener listener);
  const int NETWORK_EVENT_NUD_FAILURE_ROAM = 0;
  const int NETWORK_EVENT_NUD_FAILURE_CONFIRM = 1;
  const int NETWORK_EVENT_NUD_FAILURE_ORGANIC = 2;
  const int NETWORK_EVENT_NUD_FAILURE_MAC_ADDRESS_CHANGED = 3;
}
