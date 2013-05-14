.class Lcom/android/systemui/statusbar/easysetting/EasySetting$5;
.super Ljava/lang/Object;
.source "EasySetting.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/EasySetting;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V
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
    .line 596
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedChildView(I)V
    .locals 3
    .parameter "childIndex"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 601
    if-nez p1, :cond_1

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingMoreLeft:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingMoreRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingMoreLeft:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/EasySetting$5;->this$0:Lcom/android/systemui/statusbar/easysetting/EasySetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/EasySetting;->mEasySettingMoreRight:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method
