resource "kubernetes_deployment_v1" "nginx-deployment" {
  metadata {
    name = "nginx-deployment"
    labels = {
      app = "nginx-deployment"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        app = "nginx-deployment"
      }
    }

    template {
      metadata {
        labels = {
          app = "nginx-deployment"
        }
      }

      spec {
        container {
          image = "stacksimplify/kubenginx:1.0.0"
          name  = "nginx-deployment"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}


resource "kubernetes_service_v1" "nginx-deployment-alb" {
  metadata {
    name = "nginx-deployment-alb"
  }
  spec {
    selector = {
      app = kubernetes_deployment_v1.nginx-deployment.spec.0.selector.0.match_labels.app
    }
    port {
      name        = "http"
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_service_v1" "nginx-deployment-nlb" {
  metadata {
    name = "nginx-deployment-nlb"
    annotations = {
      "service.beta.kubernetes.io/aws-load-balancer-type" : "nlb"
    }
  }
  spec {
    selector = {
      app = kubernetes_deployment_v1.nginx-deployment.spec.0.selector.0.match_labels.app
    }
    port {
      name        = "http"
      port        = 80
      target_port = 80
    }

    type = "LoadBalancer"
  }
}

resource "kubernetes_service_v1" "nginx-deployment-np" {
  metadata {
    name = "nginx-deployment-np"
  }
  spec {
    selector = {
      app = kubernetes_deployment_v1.nginx-deployment.spec.0.selector.0.match_labels.app
    }
    port {
      name        = "http"
      port        = 80
      target_port = 80
      node_port   = 31280
    }

    type = "NodePort"
  }
}
