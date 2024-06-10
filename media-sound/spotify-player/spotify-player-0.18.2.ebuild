# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	ab_glyph@0.2.26
	ab_glyph_rasterizer@0.1.8
	addr2line@0.21.0
	adler@1.0.2
	aes-ctr@0.6.0
	aes-soft@0.6.4
	aes@0.6.0
	aesni@0.10.0
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.18
	alsa-sys@0.3.1
	alsa@0.6.0
	android-activity@0.6.0
	android-properties@0.2.2
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	ansi_colours@1.2.2
	anstream@0.6.14
	anstyle-parse@0.2.4
	anstyle-query@1.0.3
	anstyle-wincon@3.0.3
	anstyle@1.0.7
	anyhow@1.0.86
	array-init@2.1.0
	arrayref@0.3.7
	arrayvec@0.7.4
	as-raw-xcb-connection@1.0.1
	async-stream-impl@0.3.5
	async-stream@0.3.5
	async-trait@0.1.80
	atomic-waker@1.1.2
	autocfg@1.3.0
	backtrace@0.3.71
	base64@0.13.1
	base64@0.21.7
	base64@0.22.1
	bindgen@0.69.4
	bit_field@0.10.2
	bitflags@1.3.2
	bitflags@2.5.0
	block-buffer@0.10.4
	block-buffer@0.9.0
	block2@0.5.1
	block@0.1.6
	bumpalo@3.16.0
	bytemuck@1.16.0
	byteorder@1.5.0
	bytes@1.6.0
	calloop-wayland-source@0.2.0
	calloop@0.12.4
	cassowary@0.3.0
	castaway@0.2.2
	cc@1.0.98
	cesu8@1.1.0
	cexpr@0.6.0
	cfg-expr@0.15.8
	cfg-if@1.0.0
	cfg_aliases@0.2.1
	chrono@0.4.38
	cipher@0.2.5
	clang-sys@1.7.0
	clap@4.5.4
	clap_builder@4.5.2
	clap_complete@4.5.2
	clap_derive@4.5.4
	clap_lex@0.7.0
	clipboard-win@5.3.1
	cocoa-foundation@0.1.2
	cocoa@0.24.1
	color_quant@1.1.0
	colorchoice@1.0.1
	combine@4.6.7
	compact_str@0.7.1
	concurrent-queue@2.5.0
	config_parser2@0.1.5
	config_parser_derive@0.1.3
	console@0.15.8
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics@0.22.3
	core-graphics@0.23.2
	coreaudio-rs@0.10.0
	coreaudio-sys@0.2.15
	cpal@0.13.5
	cpufeatures@0.2.12
	crc32fast@1.4.2
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.20
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	crunchy@0.2.2
	crypto-common@0.1.6
	crypto-mac@0.11.0
	ctr@0.6.0
	cursor-icon@1.1.0
	daemonize@0.5.0
	darling@0.13.4
	darling_core@0.13.4
	darling_macro@0.13.4
	dbus-crossroads@0.5.2
	dbus@0.9.7
	deranged@0.3.11
	digest@0.10.7
	digest@0.9.0
	dirs-next@2.0.0
	dirs-sys-next@0.1.2
	dispatch@0.2.0
	dlib@0.5.2
	downcast-rs@1.2.1
	dpi@0.1.1
	either@1.12.0
	encode_unicode@0.3.6
	encoding_rs@0.8.34
	enum_dispatch@0.3.13
	env_filter@0.1.0
	env_logger@0.11.3
	equivalent@1.0.1
	errno@0.3.9
	error-code@3.2.0
	exr@1.72.0
	fastrand@2.1.0
	fdeflate@0.3.4
	fixedbitset@0.4.2
	flate2@1.0.30
	flume@0.11.0
	fnv@1.0.7
	foreign-types-macros@0.2.3
	foreign-types-shared@0.1.1
	foreign-types-shared@0.3.1
	foreign-types@0.3.2
	foreign-types@0.5.0
	form_urlencoded@1.2.1
	futf@0.1.5
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
	gethostname@0.4.3
	getrandom@0.2.15
	gif@0.13.1
	gimli@0.28.1
	glib-macros@0.15.13
	glib-sys@0.15.10
	glib@0.15.12
	glob@0.3.1
	gobject-sys@0.15.10
	gstreamer-app-sys@0.18.0
	gstreamer-app@0.18.7
	gstreamer-audio-sys@0.18.3
	gstreamer-audio@0.18.7
	gstreamer-base-sys@0.18.0
	gstreamer-base@0.18.0
	gstreamer-sys@0.18.0
	gstreamer@0.18.8
	h2@0.4.5
	half@2.4.1
	hashbrown@0.12.3
	hashbrown@0.14.5
	headers-core@0.2.0
	headers@0.3.9
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hmac@0.11.0
	home@0.5.9
	hostname@0.3.1
	html5ever@0.27.0
	http-body-util@0.1.1
	http-body@0.4.6
	http-body@1.0.0
	http@0.2.12
	http@1.1.0
	httparse@1.8.0
	httpdate@1.0.3
	hyper-proxy@0.9.1
	hyper-rustls@0.26.0
	hyper-tls@0.6.0
	hyper-util@0.1.4
	hyper@0.14.28
	hyper@1.3.1
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.60
	ident_case@1.0.1
	idna@0.5.0
	if-addrs@0.7.0
	image@0.24.9
	indexmap@1.9.3
	indexmap@2.2.6
	instant@0.1.13
	ipnet@2.9.0
	is_terminal_polyfill@1.70.0
	itertools@0.12.1
	itoa@1.0.11
	jack-sys@0.2.2
	jack-sys@0.4.0
	jack@0.10.0
	jack@0.8.3
	jni-sys@0.3.0
	jni@0.19.0
	jni@0.21.1
	jobserver@0.1.31
	jpeg-decoder@0.3.1
	js-sys@0.3.69
	lazy_static@1.4.0
	lazycell@1.3.0
	lebe@0.5.2
	lewton@0.10.2
	libc@0.2.155
	libdbus-sys@0.2.5
	libloading@0.6.7
	libloading@0.7.4
	libloading@0.8.3
	libm@0.2.8
	libmdns@0.7.5
	libpulse-binding@2.28.1
	libpulse-simple-binding@2.28.1
	libpulse-simple-sys@1.21.1
	libpulse-sys@1.21.0
	libredox@0.0.2
	libredox@0.1.3
	librespot-audio@0.4.2
	librespot-connect@0.4.2
	librespot-core@0.4.2
	librespot-discovery@0.4.2
	librespot-metadata@0.4.2
	librespot-playback@0.4.2
	librespot-protocol@0.4.2
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.14
	lock_api@0.4.12
	log@0.4.21
	lru@0.12.3
	mac-notification-sys@0.6.1
	mac@0.1.1
	mach@0.3.2
	make-cmd@0.1.0
	malloc_buf@0.0.6
	markup5ever@0.12.1
	markup5ever_rcdom@0.3.0
	match_cfg@0.1.0
	matchers@0.1.0
	maybe-async@0.2.10
	memchr@2.7.2
	memmap2@0.9.4
	memoffset@0.6.5
	mime@0.3.17
	minimal-lexical@0.2.1
	miniz_oxide@0.7.3
	mio@0.8.11
	muldiv@1.0.1
	multimap@0.8.3
	nanorand@0.7.0
	native-tls@0.2.11
	ndk-context@0.1.1
	ndk-glue@0.6.2
	ndk-macro@0.3.0
	ndk-sys@0.3.0
	ndk-sys@0.6.0+11769913
	ndk@0.6.0
	ndk@0.9.0
	new_debug_unreachable@1.0.6
	nix@0.23.2
	nom@7.1.3
	notify-rust@4.11.0
	nu-ansi-term@0.46.0
	num-bigint@0.4.5
	num-conv@0.1.0
	num-derive@0.3.3
	num-integer@0.1.46
	num-rational@0.4.2
	num-traits@0.2.19
	num_cpus@1.16.0
	num_enum@0.5.11
	num_enum@0.7.2
	num_enum_derive@0.5.11
	num_enum_derive@0.7.2
	objc-foundation@0.1.1
	objc-sys@0.3.5
	objc2-app-kit@0.2.2
	objc2-core-data@0.2.2
	objc2-core-image@0.2.2
	objc2-encode@4.0.3
	objc2-foundation@0.2.2
	objc2-metal@0.2.2
	objc2-quartz-core@0.2.2
	objc2@0.5.2
	objc@0.2.7
	objc_id@0.1.1
	object@0.32.2
	oboe-sys@0.4.5
	oboe@0.4.6
	ogg@0.8.0
	once_cell@1.19.0
	opaque-debug@0.3.1
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-sys@0.9.102
	openssl@0.10.64
	option-operations@0.4.1
	orbclient@0.3.47
	overload@0.1.1
	owned_ttf_parser@0.21.0
	parking_lot@0.11.2
	parking_lot@0.12.3
	parking_lot_core@0.8.6
	parking_lot_core@0.9.10
	paste@1.0.15
	pbkdf2@0.8.0
	percent-encoding@2.3.1
	petgraph@0.6.5
	phf@0.11.2
	phf_codegen@0.11.2
	phf_generator@0.10.0
	phf_generator@0.11.2
	phf_shared@0.10.0
	phf_shared@0.11.2
	pin-project-internal@1.1.5
	pin-project-lite@0.2.14
	pin-project@1.1.5
	pin-utils@0.1.0
	pkg-config@0.3.30
	png@0.17.13
	polling@3.7.0
	portaudio-rs@0.3.2
	portaudio-sys@0.1.1
	powerfmt@0.2.0
	ppv-lite86@0.2.17
	precomputed-hash@0.1.1
	pretty-hex@0.3.0
	priority-queue@1.4.0
	proc-macro-crate@1.3.1
	proc-macro-crate@3.1.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.83
	protobuf-codegen-pure@2.28.0
	protobuf-codegen@2.28.0
	protobuf@2.28.0
	qoi@0.4.1
	quick-xml@0.31.0
	quote@1.0.36
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rand_distr@0.4.3
	ratatui@0.26.3
	raw-window-handle@0.6.2
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.2.16
	redox_syscall@0.4.1
	redox_syscall@0.5.1
	redox_users@0.4.5
	regex-automata@0.1.10
	regex-automata@0.4.6
	regex-syntax@0.6.29
	regex-syntax@0.8.3
	regex@1.10.4
	reqwest@0.12.4
	rgb@0.8.37
	ring@0.17.8
	rodio@0.15.0
	rpassword@7.3.1
	rspotify-http@0.13.1
	rspotify-macros@0.13.1
	rspotify-model@0.13.1
	rspotify@0.13.1
	rtoolbox@0.0.2
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc_version@0.4.0
	rustix@0.38.34
	rustls-pemfile@2.1.2
	rustls-pki-types@1.7.0
	rustls-webpki@0.102.4
	rustls@0.22.4
	rustversion@1.0.17
	ryu@1.0.18
	same-file@1.0.6
	schannel@0.1.23
	scoped-tls@1.0.1
	scopeguard@1.2.0
	sctk-adwaita@0.9.0
	sdl2-sys@0.35.2
	sdl2@0.35.2
	security-framework-sys@2.11.0
	security-framework@2.11.0
	semver@1.0.23
	serde@1.0.202
	serde_derive@1.0.202
	serde_json@1.0.117
	serde_spanned@0.6.6
	serde_urlencoded@0.7.1
	sha-1@0.9.8
	sha1@0.10.6
	sha2@0.10.8
	shannon@0.2.0
	sharded-slab@0.1.7
	shell-words@1.1.0
	shlex@1.3.0
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.2
	signal-hook@0.3.17
	simd-adler32@0.3.7
	siphasher@0.3.11
	sixel-rs@0.3.3
	sixel-sys@0.3.1
	slab@0.4.9
	smallvec@1.13.2
	smithay-client-toolkit@0.18.1
	smol_str@0.2.2
	socket2@0.4.10
	socket2@0.5.7
	souvlaki@0.7.3
	spin@0.9.8
	stability@0.2.0
	static_assertions@1.1.0
	stdweb@0.1.3
	strict-num@0.1.1
	string_cache@0.8.7
	string_cache_codegen@0.5.2
	strsim@0.10.0
	strsim@0.11.1
	strum@0.26.2
	strum_macros@0.26.2
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.66
	sync_wrapper@0.1.2
	system-configuration-sys@0.5.0
	system-configuration@0.5.1
	system-deps@6.2.2
	target-lexicon@0.12.14
	tauri-winrt-notification@0.2.1
	tempfile@3.10.1
	tendril@0.4.3
	termcolor@1.4.1
	thiserror-impl@1.0.61
	thiserror@1.0.61
	thread-id@4.2.1
	thread_local@1.1.8
	tiff@0.9.1
	time-core@0.1.2
	time@0.3.36
	tiny-skia-path@0.11.4
	tiny-skia@0.11.4
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio-macros@2.2.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.25.0
	tokio-socks@0.5.1
	tokio-stream@0.1.15
	tokio-util@0.7.11
	tokio@1.37.0
	toml@0.8.13
	toml_datetime@0.6.6
	toml_edit@0.19.15
	toml_edit@0.21.1
	toml_edit@0.22.13
	tower-layer@0.3.2
	tower-service@0.3.2
	tower@0.4.13
	tracing-attributes@0.1.27
	tracing-core@0.1.32
	tracing-log@0.2.0
	tracing-subscriber@0.3.18
	tracing@0.1.40
	try-lock@0.2.5
	ttf-parser@0.21.1
	ttl_cache@0.5.1
	typenum@1.17.0
	unicode-bidi@0.3.15
	unicode-ident@1.0.12
	unicode-normalization@0.1.23
	unicode-segmentation@1.11.0
	unicode-truncate@1.0.0
	unicode-width@0.1.12
	untrusted@0.9.0
	url@2.5.0
	utf-8@0.7.6
	utf8parse@0.2.1
	uuid@1.8.0
	valuable@0.1.0
	vcpkg@0.2.15
	vergen@3.2.0
	version-compare@0.1.1
	version-compare@0.2.0
	version_check@0.9.4
	viuer@0.7.1
	walkdir@2.5.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.92
	wasm-bindgen-futures@0.4.42
	wasm-bindgen-macro-support@0.2.92
	wasm-bindgen-macro@0.2.92
	wasm-bindgen-shared@0.2.92
	wasm-bindgen@0.2.92
	wayland-backend@0.3.3
	wayland-client@0.31.2
	wayland-csd-frame@0.3.0
	wayland-cursor@0.31.1
	wayland-protocols-plasma@0.2.0
	wayland-protocols-wlr@0.2.0
	wayland-protocols@0.31.2
	wayland-scanner@0.31.1
	wayland-sys@0.31.1
	web-sys@0.3.69
	web-time@1.1.0
	webpki-roots@0.26.1
	weezl@0.1.8
	which@6.0.1
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.8
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-core@0.56.0
	windows-implement@0.56.0
	windows-interface@0.56.0
	windows-result@0.1.1
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows-targets@0.52.5
	windows-version@0.1.1
	windows@0.44.0
	windows@0.56.0
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.5
	windows_i686_gnullvm@0.52.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.5
	winit@0.30.0
	winnow@0.5.40
	winnow@0.6.8
	winreg@0.52.0
	winsafe@0.0.19
	x11-dl@2.21.0
	x11rb-protocol@0.13.1
	x11rb@0.13.1
	xcursor@0.3.5
	xkbcommon-dl@0.4.2
	xkeysym@0.2.0
	xml5ever@0.18.0
	zerocopy-derive@0.6.6
	zerocopy-derive@0.7.34
	zerocopy@0.6.6
	zerocopy@0.7.34
	zeroize@1.7.0
	zune-inflate@0.2.54
"

inherit cargo

DESCRIPTION="spotify_player is a fast, easy to use, and configurable terminal music player."
HOMEPAGE="https://github.com/aome510/spotify-player"
SRC_URI="
	https://github.com/aome510/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"
LICENSE="0BSD Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD BSD-2 Boost-1.0 ISC LGPL-3 LGPL-3+ MIT MPL-2.0 Unicode-DFS-2016 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"

IUSE="daemon image +libnotify lyrics +media-control pulseaudio sixel +streaming"
REQUIRED_USE="
	sixel? ( image )
	daemon? ( streaming )
"
DEPEND="
	dev-libs/openssl
	sys-apps/dbus
	libnotify? ( x11-libs/libnotify )
	pulseaudio? ( media-libs/libpulse )
	sixel? ( media-libs/libsixel )
	streaming? ( media-libs/alsa-lib )
"
RDEPEND="${DEPEND}"

src_configure() {
	initfeatures=(
		"$(usex daemon daemon '')"
		"$(usex image image '')"
		"$(usex libnotify notify '')"
		"$(usex lyrics lyric-finder '')"
		"$(usex media-control media-control '')"
		"$(usex pulseaudio pulseaudio-backend alsa-backend)"
		"$(usex sixel sixel '')"
		"$(usex streaming streaming '')"
	)
	newfeatures=$(
		IFS=,
		echo "${initfeatures[*]}"
	) || die
	cargo_src_configure --features ${newfeatures} --no-default-features
}

src_install() {
	cargo_src_install --path ./spotify_player
}
QA_FLAGS_IGNORED="usr/bin/spotify_player"
