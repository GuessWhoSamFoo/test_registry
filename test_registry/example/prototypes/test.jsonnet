// @apiVersion 0.0.1
// @name configMap
// @description Test description
// @shortDescription I am a configMap clone
// @param name string Name of prototype
// @optionalParam namespace string default testing

local example = import 'registry/example/example.libsonnet';

local namespace = import 'param://namespace';
local appName = import 'param://name';

{
    apiVersion: "v1",
    kind: "Service",
    metadata: {
        name: io.ksonnet.pkg.configMap
        annotations: namespace,
    },
    spec: {
        ports: [
            port: 80,
            targetPort: example.parts.port_number()
        ],
    },
    selector: {
        app: "example"
    }
}
