.class final Landroidx/core/view/WindowInsetsCompat$TypeImpl30;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeImpl30"
.end annotation


# direct methods
.method static toPlatformType(I)I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x100

    if-gt v0, v2, :cond_7

    and-int v2, p0, v0

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/16 v2, 0x8

    if-eq v0, v2, :cond_4

    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x40

    if-eq v0, v2, :cond_1

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2079
    :pswitch_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2076
    :pswitch_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2097
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2094
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2091
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2088
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2085
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_1

    .line 2082
    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    or-int/2addr v1, v2

    :cond_6
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
