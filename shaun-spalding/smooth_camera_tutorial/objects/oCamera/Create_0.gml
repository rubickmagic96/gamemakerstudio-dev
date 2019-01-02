// Camera Initiation
camera = camera_create()

// Still not Understand
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0)
var pm = matrix_build_projection_ortho(1024, 768, 1, 10000)

// Set ViewMat and ProjectionMat
camera_set_view_mat(camera, vm)
camera_set_proj_mat(camera, pm)

view_camera[0] = camera

follow = oGreen

xTo = x
yTo = y