.class public Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;
.super Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;
.source "BlackPort.java"


# static fields
.field private static singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7f0200e2

    .line 8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;-><init>()V

    .line 15
    const v0, 0x7f0200c9

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHome:I

    .line 16
    const v0, 0x7f0200ba

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBack:I

    .line 17
    const v0, 0x7f0200e4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecents:I

    .line 18
    const v0, 0x7f0200d0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mHomeInvisible:I

    .line 19
    const v0, 0x7f0200c3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mBackInvisible:I

    .line 20
    const v0, 0x7f0200eb

    iput v0, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mRecentsInvisible:I

    .line 21
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenu:I

    .line 22
    iput v1, p0, Lcom/android/systemui/statusbar/phone/navigationkeys/Black90;->mMenuInvisible:I

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;->singleton:Lcom/android/systemui/statusbar/phone/navigationkeys/BlackPort;

    return-object v0
.end method
