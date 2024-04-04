#!/system/bin/sh
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#	  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

link_blobs() {
  KEYMASTER=$(getprop keymaster_ver)
  PROCESSED=0

  case "$KEYMASTER" in
    3*)
      ln -s /vendor/lib64/hw/ahk /vendor/lib64/hw/android.hardware.keymaster@3.0-impl.so
      PROCESSED=1
      ;;
    *)
      PROCESSED=1
      ;;
  esac
}

link_blobs;
exit 0;