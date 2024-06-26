# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	ahash@0.8.11
	aho-corasick@1.1.2
	allocator-api2@0.2.16
	anstyle@1.0.6
	arc-swap@1.7.0
	arrayref@0.3.7
	arrayvec@0.7.4
	as_variant@1.2.0
	assign@1.1.1
	async-trait@0.1.77
	atomic@0.6.0
	autocfg@1.1.0
	axum-core@0.3.4
	axum-server@0.5.1
	axum@0.6.20
	backtrace@0.3.69
	base64@0.21.7
	base64ct@1.6.0
	bindgen@0.69.4
	bitflags@1.3.2
	bitflags@2.4.2
	blake2b_simd@1.0.2
	block-buffer@0.10.4
	bumpalo@3.15.4
	bytemuck@1.15.0
	byteorder@1.5.0
	bytes@1.5.0
	bzip2-sys@0.1.11+1.0.8
	cc@1.0.90
	cexpr@0.6.0
	cfg-if@1.0.0
	cfg_aliases@0.1.1
	clang-sys@1.7.0
	clap@4.5.2
	clap_builder@4.5.2
	clap_derive@4.5.0
	clap_lex@0.7.0
	color_quant@1.1.0
	const-oid@0.9.6
	const_panic@0.2.8
	constant_time_eq@0.3.0
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	cpufeatures@0.2.12
	crc-catalog@2.4.0
	crc32fast@1.4.0
	crc@3.0.1
	crossbeam-channel@0.5.12
	crossbeam-utils@0.8.19
	crypto-common@0.1.6
	curve25519-dalek-derive@0.1.1
	curve25519-dalek@4.1.2
	dashmap@5.5.3
	data-encoding@2.5.0
	der@0.7.8
	deranged@0.3.11
	digest@0.10.7
	directories@4.0.1
	dirs-sys@0.3.7
	ed25519-dalek@2.1.1
	ed25519@2.2.3
	either@1.10.0
	encoding_rs@0.8.33
	enum-as-inner@0.5.1
	equivalent@1.0.1
	fallible-iterator@0.2.0
	fallible-streaming-iterator@0.1.9
	fdeflate@0.3.4
	fiat-crypto@0.2.6
	figment@0.10.14
	flate2@1.0.28
	fnv@1.0.7
	form_urlencoded@1.2.1
	fs2@0.4.3
	futures-channel@0.3.30
	futures-core@0.3.30
	futures-executor@0.3.30
	futures-io@0.3.30
	futures-macro@0.3.30
	futures-sink@0.3.30
	futures-task@0.3.30
	futures-util@0.3.30
	futures@0.3.30
	generic-array@0.14.7
	getrandom@0.2.12
	gif@0.13.1
	gimli@0.28.1
	glob@0.3.1
	h2@0.3.24
	hashbrown@0.12.3
	hashbrown@0.14.3
	hashlink@0.8.4
	headers-core@0.2.0
	headers@0.3.9
	heck@0.4.1
	hermit-abi@0.3.9
	hmac@0.12.1
	hostname@0.3.1
	http-body@0.4.6
	http-range-header@0.3.1
	http@0.2.12
	httparse@1.8.0
	httpdate@1.0.3
	hyper-rustls@0.24.2
	hyper@0.14.28
	idna@0.2.3
	idna@0.5.0
	image@0.24.9
	indexmap@1.9.3
	indexmap@2.2.5
	inlinable_string@0.1.15
	integer-encoding@3.0.4
	ipconfig@0.3.2
	ipnet@2.9.0
	itertools@0.11.0
	itertools@0.12.1
	itoa@1.0.10
	jobserver@0.1.28
	jpeg-decoder@0.3.1
	js-sys@0.3.69
	js_int@0.2.2
	js_option@0.1.1
	jsonwebtoken@9.2.0
	konst@0.3.8
	konst_kernel@0.3.8
	lazy_static@1.4.0
	lazycell@1.3.0
	libc@0.2.153
	libloading@0.8.3
	libredox@0.0.1
	libsqlite3-sys@0.26.0
	libz-sys@1.1.15
	linked-hash-map@0.5.6
	lock_api@0.4.11
	log@0.4.21
	lru-cache@0.1.2
	lz4-sys@1.9.4
	maplit@1.0.2
	match_cfg@0.1.0
	matchers@0.1.0
	matches@0.1.10
	matchit@0.7.3
	memchr@2.7.1
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.2
	mio@0.8.11
	nix@0.28.0
	nom@7.1.3
	nu-ansi-term@0.46.0
	num-bigint@0.4.4
	num-conv@0.1.0
	num-integer@0.1.46
	num-traits@0.2.18
	num_cpus@1.16.0
	object@0.32.2
	once_cell@1.19.0
	openssl-probe@0.1.5
	opentelemetry-jaeger@0.17.0
	opentelemetry-semantic-conventions@0.10.0
	opentelemetry@0.18.0
	opentelemetry_api@0.18.0
	opentelemetry_sdk@0.18.0
	ordered-float@1.1.1
	overload@0.1.1
	parking_lot@0.12.1
	parking_lot_core@0.9.9
	paste@1.0.14
	pear@0.2.8
	pear_codegen@0.2.8
	pem@3.0.3
	percent-encoding@2.3.1
	persy@1.5.0
	pin-project-internal@1.1.5
	pin-project-lite@0.2.13
	pin-project@1.1.5
	pin-utils@0.1.0
	pkcs8@0.10.2
	pkg-config@0.3.30
	platforms@3.3.0
	png@0.17.13
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	proc-macro-crate@2.0.2
	proc-macro2-diagnostics@0.10.1
	proc-macro2@1.0.79
	quick-error@1.2.3
	quote@1.0.35
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.4.1
	redox_users@0.4.4
	regex-automata@0.1.10
	regex-automata@0.4.6
	regex-syntax@0.6.29
	regex-syntax@0.8.2
	regex@1.10.3
	reqwest@0.11.26
	resolv-conf@0.7.0
	ring@0.17.8
	rusqlite@0.29.0
	rust-argon2@1.0.1
	rust-librocksdb-sys@0.20.0+9.1.0
	rust-rocksdb@0.24.0
	rustc-demangle@0.1.23
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.4
	rustls-webpki@0.101.7
	rustls@0.21.10
	rustversion@1.0.14
	ryu@1.0.17
	schannel@0.1.23
	scopeguard@1.2.0
	sct@0.7.1
	sd-notify@0.4.1
	security-framework-sys@2.9.1
	security-framework@2.9.2
	semver@1.0.22
	serde@1.0.197
	serde_derive@1.0.197
	serde_html_form@0.2.5
	serde_json@1.0.114
	serde_path_to_error@0.1.16
	serde_spanned@0.6.5
	serde_urlencoded@0.7.1
	serde_yaml@0.9.32
	sha-1@0.10.1
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.1
	signature@2.2.0
	simd-adler32@0.3.7
	simple_asn1@0.6.2
	slab@0.4.9
	smallvec@1.13.1
	socket2@0.5.6
	spin@0.9.8
	spki@0.7.3
	subslice@0.2.3
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.52
	sync_wrapper@0.1.2
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	thiserror-impl@1.0.58
	thiserror@1.0.58
	thread_local@1.1.8
	threadpool@1.8.1
	thrift@0.16.0
	tikv-jemalloc-ctl@0.5.4
	tikv-jemalloc-sys@0.5.4+5.3.0-patched
	tikv-jemallocator@0.5.4
	time-core@0.1.2
	time-macros@0.2.17
	time@0.3.34
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.2.0
	tokio-rustls@0.24.1
	tokio-socks@0.5.1
	tokio-stream@0.1.14
	tokio-util@0.7.10
	tokio@1.36.0
	toml@0.8.2
	toml_datetime@0.6.3
	toml_edit@0.20.2
	tower-http@0.4.4
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-flame@0.2.0
	tracing-log@0.1.4
	tracing-log@0.2.0
	tracing-opentelemetry@0.18.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	trust-dns-proto@0.22.0
	trust-dns-resolver@0.22.0
	try-lock@0.2.5
	typenum@1.17.0
	typewit@1.9.0
	typewit_proc_macros@1.8.1
	uncased@0.9.10
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unsafe-libyaml@0.2.10
	unsigned-varint@0.8.0
	untrusted@0.9.0
	url@2.5.0
	uuid@1.7.0
	valuable@0.1.0
	vcpkg@0.2.15
	version_check@0.9.4
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	web-sys@0.3.69
	web-time@1.1.0
	weezl@0.1.8
	widestring@1.0.2
	wildmatch@2.3.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.48.5
	windows-targets@0.52.4
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.4
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.4
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.4
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.4
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.4
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.4
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.4
	winnow@0.5.40
	winreg@0.50.0
	yansi@1.0.1
	zerocopy-derive@0.7.32
	zerocopy@0.7.32
	zeroize@1.7.0
	zigzag@0.1.0
	zstd-sys@2.0.9+zstd.1.5.5
"

declare -A GIT_CRATES=(
	[ruma-appservice-api]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-appservice-api'
	[ruma-client-api]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-client-api'
	[ruma-common]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-common'
	[ruma-events]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-events'
	[ruma-federation-api]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-federation-api'
	[ruma-identifiers-validation]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-identifiers-validation'
	[ruma-identity-service-api]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-identity-service-api'
	[ruma-macros]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-macros'
	[ruma-push-gateway-api]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-push-gateway-api'
	[ruma-signatures]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-signatures'
	[ruma-state-res]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma-state-res'
	[ruma]='https://github.com/ruma/ruma;5495b85aa311c2805302edb0a7de40399e22b397;ruma-%commit%/crates/ruma'
)

inherit cargo systemd toolchain-funcs

MY_P="${PN}-v${PV}"
DESCRIPTION="Matrix homeserver written in Rust"
HOMEPAGE="
	https://conduit.rs
	https://gitlab.com/famedly/conduit
"
SRC_URI="https://gitlab.com/famedly/${PN}/-/archive/v${PV}/${MY_P}.tar.bz2
	${CARGO_CRATE_URIS}
"
S="${WORKDIR}/${MY_P}"

LICENSE="Apache-2.0"
# Dependent crate licenses
LICENSE+="
	|| ( 0BSD Apache-2.0 MIT )
	|| ( Apache-2.0 Apache-2.0-with-LLVM-exceptions MIT )
	|| ( Apache-2.0 BSD MIT )
	|| ( Apache-2.0 BSD-1 MIT )
	|| ( Apache-2.0 BSD-2 MIT )
	|| ( Apache-2.0 Boost-1.0 )
	|| ( Apache-2.0 CC0-1.0 MIT )
	|| ( Apache-2.0 ISC MIT )
	|| ( Apache-2.0 MIT )
	|| ( Apache-2.0 MIT ZLIB )
	|| ( MIT Unlicense )
	BSD BSD-2 ISC MIT MPL-2.0 Unicode-DFS-2016 ZLIB openssl
"
SLOT="0"
KEYWORDS="~amd64"
IUSE="jemalloc rocksdb system-rocksdb"

# Libraries that can't be unbundled right now:
#	- app-arch/bzip2 (no pkg-config file)
#	- app-arch/lz4 ("lz4-sys" crate doesn't look for system library... ironic)
#	- dev-db/sqlite:3 ("conduit" pulls "rusqlite[bundled]" explicitly)
#	- sys-libs/zlib ("rust-librocksdb-sys" pulls "libz-sys[static]" by default)
DEPEND="
	jemalloc? ( dev-libs/jemalloc:= )
	rocksdb? (
		app-arch/snappy:=
		app-arch/zstd:=
		system-rocksdb? ( dev-libs/rocksdb )
	)
"
RDEPEND="${DEPEND}
	acct-user/conduit
	app-misc/ca-certificates
"
BDEPEND="
	>=virtual/rust-1.75.0
	rocksdb? (
		sys-devel/clang
		virtual/pkgconfig
	)
"

DOCS=( {APPSERVICES,CODE_OF_CONDUCT,DEPLOY,README,TURN}.md )

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_configure() {
	tc-export AR CC

	# Tracker bug for that Cargo nonsense:
	# https://bugs.gentoo.org/709568
	export PKG_CONFIG_ALLOW_CROSS=1
	export ZSTD_SYS_USE_PKG_CONFIG=1
	export SNAPPY_LIB_DIR="${ESYSROOT}/usr/$(get_libdir)"
	export JEMALLOC_OVERRIDE="${ESYSROOT}/usr/$(get_libdir)/libjemalloc.so"

	if use system-rocksdb; then
		export ROCKSDB_INCLUDE_DIR="${ESYSROOT}/usr/include"
		export ROCKSDB_LIB_DIR="${ESYSROOT}/usr/$(get_libdir)"
	fi

	local myfeatures=(
		conduit_bin
		systemd
		$(usev jemalloc)

		# database backends
		backend_persy
		backend_sqlite
		$(usex rocksdb backend_rocksdb '')
	)

	cargo_src_configure --no-default-features
}

src_install() {
	cargo_src_install

	keepdir /var/lib/matrix-conduit
	fowners conduit:conduit /var/lib/matrix-conduit
	fperms 700 /var/lib/matrix-conduit

	insinto /etc/conduit
	newins conduit-example.toml conduit.toml

	newinitd "${FILESDIR}"/conduit.initd conduit
	newconfd "${FILESDIR}"/conduit.confd conduit
	systemd_dounit "${FILESDIR}"/conduit.service
}
