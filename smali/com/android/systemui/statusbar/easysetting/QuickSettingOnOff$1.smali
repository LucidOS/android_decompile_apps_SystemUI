.class Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;
.super Ljava/lang/Object;
.source "QuickSettingOnOff.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->access$000(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    iget v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mModeState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;->access$000(Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff$1;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSettingOnOff;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 223
    :cond_0
    return-void
.end method
