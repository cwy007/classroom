# book link

rspec-101
https://www.gitbook.com/book/xdite/rspec-101/details

# travis continuous integration

[![Build Status](https://travis-ci.org/cwy007/classroom.svg?branch=master)](https://travis-ci.org/cwy007/classroom)

编写代码只是软件开发的一小部分，更多的时间往往花在构建（build）和测试（test）。

为了提高软件开发的效率，构建和测试的自动化工具层出不穷。[Travis CI](https:travis-ci.org/) 就是这类工具之中，市场份额最大的一个。

Building a Ruby Project
https://docs.travis-ci.com/user/languages/ruby

持续集成是什么？
http://www.ruanyifeng.com/blog/2015/09/continuous-integration.html

持续集成服务 Travis CI 教程
http://www.ruanyifeng.com/blog/2017/12/travis_ci_tutorial.html

# setup-travis-ci-example
https://github.com/JuanitoFatas/setup-travis-ci-example


# Class domain model
![](https://ws4.sinaimg.cn/large/006tNc79ly1foxln7mtqvj30im0t240o.jpg)

# 测试种类

单元测试：针对函数或模块的测试
集成测试：针对整体产品的某个功能的测试，又称功能测试
端对端测试：从用户界面直达数据库的全链路测试

# 检查所有的 Factory 是否正确定义

`FactoryBot.lint` 可以检查所有的 Factory 是否正确定义，可以在 `rails console `下输入
`FactoryBot.lint` 来试试。
