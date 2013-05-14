.class Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayBatteryLevel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryLevelDB()Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mIsDisplayBatteryLevel:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$002(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$DisplayBatteryLevel;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateBatteryViews()V

    .line 55
    return-void
.end method
