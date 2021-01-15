//
//  Interface.h
//  Tmeplateform_App
//
//  Created by JXH on 2021/1/8.
//  Copyright © 2021 MrYeL. All rights reserved.
//

#ifndef Interface_h
#define Interface_h

#if DEBUG
/** 测试环境*/
#define BASE_URL @"www.baidu.com"

#else
/** 发布环境*/
#define BASE_URL @"www.jianshu.com"

#endif

#endif /* Interface_h */
