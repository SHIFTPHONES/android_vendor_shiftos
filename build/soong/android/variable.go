package android
type Product_variables struct {
	Build_with_gms struct {
		Additional_manifests []string
		Manifest *string
	}
	Build_without_gms struct {
		Additional_manifests []string
		Manifest *string
	}
}

type ProductVariables struct {
	Build_with_gms *bool `json:",omitempty"`
	Build_without_gms *bool `json:",omitempty"`
}
