.class final Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;
.super Ljava/lang/Object;
.source "EasySettingEditOnOff.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayNextView"
.end annotation


# instance fields
.field private final mIsOn:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter "isOn"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 351
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->mIsOn:Ljava/lang/Boolean;

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;Ljava/lang/Boolean;Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->mIsOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOffStatusBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$300(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->mIsOn:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 362
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->mOnStatusBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;

    iget-object v2, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    iget-object v3, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$DisplayNextView;->mIsOn:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff$SwapViews;-><init>(Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 365
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 355
    return-void
.end method
