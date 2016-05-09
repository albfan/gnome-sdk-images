all: repo org.gnome.Sdk.json
	flatpak-builder --force-clean --ccache --require-changes --repo=repo --subject="build of org.gnome.Sdk, `date`" ${EXPORT_ARGS} sdk org.gnome.Sdk.json
	rm -rf sdk

repo:
	ostree  init --mode=archive-z2 --repo=repo
