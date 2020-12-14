kubectl expose deployment media-front --name=media-front --port=8080 --target-port=8080 --type=NodePort --selector=name=media-front --overrides '{ "apiVersion": "v1","spec":{"ports":[{"port": 80,"protocol":"TCP","targetPort": 80,"nodePort": 30380}]}}'

