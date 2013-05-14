.class public Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;
.super Ljava/lang/Object;
.source "Black180.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/navigationkeys/KeyState;


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;


# instance fields
.field private final mBack:I

.field private final mBackInvisible:I

.field private final mHome:I

.field private final mHomeInvisible:I

.field private final mMenu:I

.field private final mMenuInvisible:I

.field private final mRecents:I

.field private final mRecentsInvisible:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7f0200e2

    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const v0, 0x7f0200cc

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mHome:I

    .line 15
    const v0, 0x7f0200bd

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mBack:I

    .line 16
    const v0, 0x7f0200e7

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mRecents:I

    .line 17
    const v0, 0x7f0200cd

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mHomeInvisible:I

    .line 18
    const v0, 0x7f0200be

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mBackInvisible:I

    .line 19
    const v0, 0x7f0200e8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mRecentsInvisible:I

    .line 20
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mMenu:I

    .line 21
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->mMenuInvisible:I

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;

    .line 33
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black180;

    return-object v0
.end method


# virtual methods
.method public getBackDrawableId()I
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f0200bd

    return v0
.end method

.method public getBackInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0200be

    return v0
.end method

.method public getHomeDrawableId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f0200cc

    return v0
.end method

.method public getHomeInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 52
    const v0, 0x7f0200cd

    return v0
.end method

.method public getMenuDrawableId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0200e2

    return v0
.end method

.method public getMenuInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 72
    const v0, 0x7f0200e2

    return v0
.end method

.method public getRecentsDrawableId()I
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f0200e7

    return v0
.end method

.method public getRecentsInvisibleDrawableId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0200e8

    return v0
.end method

.method public setRotationState(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 78
    return-void
.end method
