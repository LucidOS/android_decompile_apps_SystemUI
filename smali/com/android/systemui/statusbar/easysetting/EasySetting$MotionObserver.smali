.class Lcom/android/systemui/statusbar/easysetting/EasySetting$MotionObserver;
.super Ljava/lang/Object;
.source "EasySetting.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$MotionObserver;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mMotionOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$MotionObserver;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySetting;->getMotionOnOff()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$100(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setOn(Z)V

    .line 282
    const-string v0, "EasySettings"

    const-string v1, "Motion onoff changed"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method
