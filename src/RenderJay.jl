module RenderJay


const SMALL_NUM = 0.000001
const GREAT_NUM = 100000.0
const p = 1.0/(2.0 * pi)
const INV_PI = 1.0/pi


using CSV, LightXML, DataFrames, DelimitedFiles, LinearAlgebra, ProgressMeter, SharedArrays, ImageMagick, Images


include("structs.jl")
export normalize
export Asset
export Bvh
export Camera
export Coord
export Geometry
export Cylinder
export Cone
export Mesh
export Point
export Ray
export Hook


include("transform.jl")
export translate_ray
export transform_tzy
export carthesian2spherical
export spherical2carthesian
export relazi
export get_extremes
export transform
export transform_forward
export transform_inverse
export rotate_forward
export rotate_inverse
export weibull


include("create.jl")
export create_ray
export create_coords


include("bvh.jl")
export make_boxes
export produce_bvh_data
export median_cut
export build_containing_box
export produce_bounding_boxes
export make_bvh


include("light.jl")
export make_sky
export background_radiance
export sample_skymap


include("render.jl")
export trace_back
export render_pixel
export render_image


include("brdf.jl")
export cross_scalars
export normalize_scalars
export project2normal
export sample_f
export propagate
export compute_propagation_of_reflectance
export compute_propagation_of_transmittance
export distr
export geom
export fresnel
export cooktorrance
export compute_half_vector
export ct_sampler
export pure_reflection
export rpv


include("intersect.jl")
export hit_box
export intersect_bvh
export intersect
export intersect_scene


include("shader.jl")
export lambertian_shader
export bilambertian_shader
export pure_reflection_shader
export rpv_shader
export lambertian_path_shader
export bilambertian_path_shader
export rpv_path_shader
export pure_reflection_path_shader
export lightsource_path_shader


include("io.jl")
export read_shaders
export read_items
export read_items_no_load_bvh
export read_items_load_bvh
export read_camera
export read_skymap
export read_scene
export read_cylinder_data
export read_cylinder
export read_cone_data
export read_cone
export read_mesh_data
export read_mesh
export write_bvh
export read_bvh


end # module
