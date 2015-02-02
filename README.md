# AsynImageViewAndButtonDemo
异步加载图片的ImageView和Button控件
# 简介说明
Demo里面包含了两个控件，一个是UIImageView的子类：AsynImageView；另一个是UIButton的子类：AsynImageButton。<br/>
其中两个子类都包含方法- (void) initAsynImageWithPlaceholderImage: (UIImage*)placeholderImage andImagePath: (NSString*)imagePath andImageLocalPath: (NSString*)imageLocalPath;<br/>
# 使用步骤：
0. 导入ASIHttpRequest网络操作的开源项目（Demo里有），由于该项目是非ARC的，所以需要设置-fno-objc-arc；导入必要网络请求框架（CFNetwork.framework和libz.dylib）
1. 初始化AsynImageView或AsynImageButton对象
2. 调用- (void) initAsynImageWithPlaceholderImage: (UIImage*)placeholderImage andImagePath: (NSString*)imagePath andImageLocalPath: (NSString*)imageLocalPath;实现图片异步加载，
其中参数placeholderImage是默认图片对象，参数imagePath是图片URL字符串，参数imageLocalPath是图片本地缓存路径字符串。<br/>
<br/>至此就完成了
