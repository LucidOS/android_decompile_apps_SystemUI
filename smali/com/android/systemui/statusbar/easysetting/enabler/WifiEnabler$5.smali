.class Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$5;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->createHotspotOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$5;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$5;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$5;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->setWifiEnabled(Z)Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->access$600(Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;Z)Z

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler$5;->this$0:Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/easysetting/enabler/WifiEnabler;->showProgress()V

    .line 376
    return-void
.end method
