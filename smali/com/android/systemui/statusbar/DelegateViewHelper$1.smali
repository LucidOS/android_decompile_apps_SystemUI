.class synthetic Lcom/android/systemui/statusbar/DelegateViewHelper$1;
.super Ljava/lang/Object;
.source "DelegateViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DelegateViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$pantech$PantechVendor$RecentAppDeviceVal:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;->values()[Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/statusbar/DelegateViewHelper$1;->$SwitchMap$com$android$internal$pantech$PantechVendor$RecentAppDeviceVal:[I

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/DelegateViewHelper$1;->$SwitchMap$com$android$internal$pantech$PantechVendor$RecentAppDeviceVal:[I

    sget-object v1, Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;->EF48S:Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;

    invoke-virtual {v1}, Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/statusbar/DelegateViewHelper$1;->$SwitchMap$com$android$internal$pantech$PantechVendor$RecentAppDeviceVal:[I

    sget-object v1, Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;->EF47S:Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;

    invoke-virtual {v1}, Lcom/android/internal/pantech/PantechVendor$RecentAppDeviceVal;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
