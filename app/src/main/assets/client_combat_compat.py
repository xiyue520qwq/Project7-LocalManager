# The local transport exposes close(), while stock logout calls disconnect().
import gg

_q7_local_gate = getattr(gg.logic, 'gate_client', None)
if (_q7_local_gate is not None and type(_q7_local_gate).__name__ == 'LocalClient'
        and not hasattr(_q7_local_gate, 'disconnect') and hasattr(_q7_local_gate, 'close')):
    _q7_local_close = type(_q7_local_gate).close
    type(_q7_local_gate).disconnect = getattr(_q7_local_close, 'im_func', _q7_local_close)

gg.avatar.callServerMethod('evalEcho', {'m': 'q7_combat_cancel_compat_v1'})
