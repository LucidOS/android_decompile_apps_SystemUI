.class Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;
.super Ljava/lang/Object;
.source "QuickSetting.java"

# interfaces
.implements Lcom/android/systemui/statusbar/easysetting/EasySettingPageView$ChangedChildViewLisnter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/QuickSetting;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/easysetting/EasySettingManager;)V
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
    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

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

    .line 267
    if-nez p1, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingMoreLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingMoreRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingMoreLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$2;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/QuickSetting;->mEasySettingMoreRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
