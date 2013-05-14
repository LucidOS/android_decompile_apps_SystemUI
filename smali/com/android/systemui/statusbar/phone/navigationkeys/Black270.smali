.class public Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;
.super Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;
.source "Black270.java"


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7f0200e2

    .line 9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;-><init>()V

    .line 16
    const v0, 0x7f0200d1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHome:I

    .line 17
    const v0, 0x7f0200c4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBack:I

    .line 18
    const v0, 0x7f0200ec

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecents:I

    .line 19
    const v0, 0x7f0200d2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHomeInvisible:I

    .line 20
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBackInvisible:I

    .line 21
    const v0, 0x7f0200ed

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecentsInvisible:I

    .line 22
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenu:I

    .line 23
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenuInvisible:I

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    .line 32
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/Black270;

    return-object v0
.end method
