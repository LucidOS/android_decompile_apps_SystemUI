.class Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;
.super Ljava/lang/Object;
.source "EasySettingOnOff.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;
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
    .line 369
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$500(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff$3;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySettingOnOff;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
