.class Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;
.super Ljava/lang/Object;
.source "QuickSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/QuickSetting;->registerQuickSettingClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mIsEditMode:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$300(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$400(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->access$400(Lcom/android/systemui/statusbar/easysetting/QuickSetting;)Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onFinishEditMode()V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mMoveOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$8;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEditEndOnOff:Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/easysetting/EasySettingEditOnOff;->setVisibility(I)V

    goto :goto_0
.end method
