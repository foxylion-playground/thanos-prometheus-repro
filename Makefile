install:
	#kubectl create ns monitoring

	helm upgrade --install prometheus \
		--values prometheus-values.yaml \
		--namespace monitoring \
		--repo https://prometheus-community.github.io/helm-charts \
		kube-prometheus-stack \
		--version 11.1.1

	helm upgrade --install thanos \
		--values thanos-values.yaml \
		--namespace monitoring \
		--repo https://charts.bitnami.com/bitnami \
		thanos \
		--version 3.0.0
