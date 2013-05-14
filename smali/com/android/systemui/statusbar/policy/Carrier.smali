.class public Lcom/android/systemui/statusbar/policy/Carrier;
.super Ljava/lang/Object;
.source "Carrier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCarrier(Ljava/lang/String;)I
    .locals 2
    .parameter "carrier"

    .prologue
    const/4 v0, 0x1

    .line 12
    const-string v1, "skt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_0

    .line 30
    :goto_0
    return v0

    .line 15
    :cond_0
    const-string v1, "kt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 16
    const/4 v0, 0x2

    goto :goto_0

    .line 18
    :cond_1
    const-string v1, "lgu+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 19
    const/4 v0, 0x3

    goto :goto_0

    .line 21
    :cond_2
    const-string v1, "att"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_3

    .line 22
    const/4 v0, 0x4

    goto :goto_0

    .line 24
    :cond_3
    const-string v1, "vzw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_4

    .line 25
    const/4 v0, 0x5

    goto :goto_0

    .line 27
    :cond_4
    const-string v1, "kddi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v0, :cond_5

    .line 28
    const/4 v0, 0x6

    goto :goto_0

    .line 30
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method
