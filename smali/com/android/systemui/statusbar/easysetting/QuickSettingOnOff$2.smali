.class Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;
.super Ljava/lang/Object;
.source "QuickSettingOnOff.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->access$100(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->access$200(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->access$100(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
