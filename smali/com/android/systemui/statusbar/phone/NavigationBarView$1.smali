.class Lcom/android/systemui/statusbar/phone/NavigationBarView$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes$OnThemesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemesChanged(I)V
    .locals 4
    .parameter "theme"

    .prologue
    .line 109
    const-string v1, "PhoneStatusBar/NavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onThemesChanged :: theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLastTheme:I
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$002(Lcom/android/systemui/statusbar/phone/NavigationBarView;I)I

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #calls: Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationThemes(I)V
    invoke-static {v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarView;I)V

    .line 115
    sget-boolean v1, Lcom/android/internal/pantech/PantechVendor;->FW_VENDOR_SUPPORT_DUAL_NAVIGATION_THEME:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.intent.action.NAVIGATION_THEME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "theme"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$200(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 121
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 110
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method
