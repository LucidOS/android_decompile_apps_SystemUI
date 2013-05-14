.class Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;
.super Ljava/lang/Object;
.source "QuickSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/easysetting/QuickSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasySettingItem"
.end annotation


# instance fields
.field mIndex:I

.field mParent:Landroid/view/ViewGroup;

.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/QuickSetting;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "v"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;->this$0:Lcom/android/systemui/statusbar/easysetting/QuickSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 711
    if-eqz p2, :cond_0

    .line 713
    iput-object p2, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;->mView:Landroid/view/View;

    .line 714
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;->mParent:Landroid/view/ViewGroup;

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;->mParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/easysetting/QuickSetting$EasySettingItem;->mIndex:I

    .line 720
    :cond_0
    return-void
.end method
