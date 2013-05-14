.class Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EasySettingOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->setState(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->currentStateView()Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$000(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View;

    move-result-object v1

    const-string v2, "rotationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 238
    .local v0, testAnim2:Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1$1;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 245
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mState:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$100(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)I

    move-result v2

    #calls: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->changeStateButton(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$200(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;I)V

    .line 247
    return-void

    .line 236
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xb4t 0x42t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
