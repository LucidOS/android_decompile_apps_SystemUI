.class final Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;
.super Ljava/lang/Object;
.source "EasySettingEditOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field private final mIsOn:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter "isOn"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->mIsOn:Ljava/lang/Boolean;

    .line 377
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/high16 v1, 0x42b4

    const/high16 v5, 0x4120

    const/4 v2, 0x0

    const/high16 v10, 0x4000

    .line 380
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v7, v10

    .line 381
    .local v3, centerX:F
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v7, v10

    .line 383
    .local v4, centerY:F
    const-string v7, "JY"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SwapViews :: mIsOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->mIsOn:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " currentIsOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->isOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->mIsOn:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->isOn()Z

    move-result v8

    if-eq v7, v8, :cond_0

    .line 408
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->mIsOn:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 389
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v7, v10

    .line 390
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v7, v10

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 392
    .local v0, rotation:Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setDuration(J)V

    .line 393
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setFillAfter(Z)V

    .line 394
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 395
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 399
    .end local v0           #rotation:Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v7, v10

    .line 400
    iget-object v7, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v7, v10

    .line 401
    new-instance v0, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 402
    .restart local v0       #rotation:Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setDuration(J)V

    .line 403
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setFillAfter(Z)V

    .line 404
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 405
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
