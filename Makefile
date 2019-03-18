IGNORE_DEPS += edown eper eunit_formatters meck node_package rebar_lock_deps_plugin rebar_vsn_plugin reltool_util
C_SRC_DIR = /path/do/not/exist
C_SRC_TYPE = rebar
DRV_CFLAGS = -fPIC
export DRV_CFLAGS
ERLANG_ARCH = 64
export ERLANG_ARCH
ERLC_OPTS = +debug_info
export ERLC_OPTS
ERLC_OPTS += -DAPPLICATION=emqx

DEPS += jsx
dep_jsx = hex 2.9.0 undefined
DEPS += gproc
dep_gproc = hex 0.8.0 undefined
DEPS += cowboy
dep_cowboy = hex 2.4.0 undefined
DEPS += meck
dep_meck = hex 0.8.13 undefined
DEPS += gen_rpc
dep_gen_rpc = git https://github.com/emqx/gen_rpc 2.3.1
DEPS += ekka
dep_ekka = git https://github.com/emqx/ekka v0.5.3
DEPS += replayq
dep_replayq = git https://github.com/emqx/replayq v0.1.1
DEPS += esockd
dep_esockd = git https://github.com/emqx/esockd v5.4.4
DEPS += cuttlefish
dep_cuttlefish = git https://github.com/emqx/cuttlefish v2.2.1


rebar_dep: preprocess pre-deps deps pre-app app

preprocess::

pre-deps::

pre-app::

include $(if $(ERLANG_MK_FILENAME),$(ERLANG_MK_FILENAME),erlang.mk)