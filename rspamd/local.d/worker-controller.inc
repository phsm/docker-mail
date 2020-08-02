bind_socket = "0.0.0.0:11334"
.include(try=true; priority=1,duplicate=merge) "$LOCAL_CONFDIR/local.d/worker-controller-password.inc"
