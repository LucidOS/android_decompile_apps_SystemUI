.class Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$3;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->setWifiEnabled(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$3;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$3;->val$state:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$3;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$3;->val$state:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 309
    return-void
.end method
