.class Lcom/android/systemui/statusbar/easysetting/EasySetting$7;
.super Ljava/lang/Object;
.source "EasySetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/EasySetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$7;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$7;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySetting;->mIsEditMode:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$300(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$7;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onEditMode()V

    .line 1070
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$7;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    #getter for: Lcom/android/systemui/statusbar/easysetting/EasySetting;->mModeChanger:Lcom/android/systemui/statusbar/easysetting/ModeChanger;
    invoke-static {v0}, Lcom/android/systemui/statusbar/easysetting/EasySetting;->access$400(Lcom/android/systemui/statusbar/easysetting/EasySetting;)Lcom/android/systemui/statusbar/easysetting/ModeChanger;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/easysetting/ModeChanger;->onFinishEditMode()V

    goto :goto_0
.end method
