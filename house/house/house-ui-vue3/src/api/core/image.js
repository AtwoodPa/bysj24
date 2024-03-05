import request from '@/utils/request'

// 查询房源图片列表
export function listImage(query) {
  return request({
    url: '/core/image/list',
    method: 'get',
    params: query
  })
}

// 查询房源图片详细
export function getImage(id) {
  return request({
    url: '/core/image/' + id,
    method: 'get'
  })
}

// 新增房源图片
export function addImage(data) {
  return request({
    url: '/core/image',
    method: 'post',
    data: data
  })
}

// 修改房源图片
export function updateImage(data) {
  return request({
    url: '/core/image',
    method: 'put',
    data: data
  })
}

// 删除房源图片
export function delImage(id) {
  return request({
    url: '/core/image/' + id,
    method: 'delete'
  })
}
