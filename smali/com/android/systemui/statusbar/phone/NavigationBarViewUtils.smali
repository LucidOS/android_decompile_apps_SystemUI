.class public Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;
.super Ljava/lang/Object;
.source "NavigationBarViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$NavigationBarViewThemes;,
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationEnabledReceiver;,
        Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils$ButtonOrientationListener;
    }
.end annotation


# static fields
.field public static final ORIENTATION_CLASSES:[Ljava/lang/String;

.field public static final ORIENTATION_PACKAGES:[Ljava/lang/String;

.field public static final ORIENTATION_STATE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 49
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "com.pantech.app.skycamera"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.skycamera"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.camnote"

    aput-object v1, v0, v5

    const-string v1, "com.pantech.app.skycamera"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;->ORIENTATION_PACKAGES:[Ljava/lang/String;

    .line 63
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "com.pantech.app.skycamera.Camera"

    aput-object v1, v0, v3

    const-string v1, "com.pantech.app.skycamera.VideoCamera"

    aput-object v1, v0, v4

    const-string v1, "com.pantech.app.camnote.CamNote"

    aput-object v1, v0, v5

    const-string v1, "com.pantech.app.skycamera.picbest.app.ArcPicturesBestInitActivity"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;->ORIENTATION_CLASSES:[Ljava/lang/String;

    .line 77
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationBarViewUtils;->ORIENTATION_STATE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    return-void
.end method
