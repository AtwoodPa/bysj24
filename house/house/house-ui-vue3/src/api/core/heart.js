import request from '@/utils/request'

// 查询房屋收藏列表
export function listHeart(query) {
  return request({
    url: '/core/heart/list',
    method: 'get',
    params: query
  })
}

// 查询房屋收藏详细
export function getHeart(id) {
  return request({
    url: '/core/heart/' + id,
    method: 'get'
  })
}

// 新增房屋收藏
export function addHeart(data) {
  return request({
    url: '/core/heart',
    method: 'post',
    data: data
  })
}

// 修改房屋收藏
export function updateHeart(data) {
  return request({
    url: '/core/heart',
    method: 'put',
    data: data
  })
}

// 删除房屋收藏
export function delHeart(id) {
  return request({
    url: '/core/heart/' + id,
    method: 'delete'
  })
}
