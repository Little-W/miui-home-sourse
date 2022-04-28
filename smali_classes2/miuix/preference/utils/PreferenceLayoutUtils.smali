.class public Lmiuix/preference/utils/PreferenceLayoutUtils;
.super Ljava/lang/Object;
.source "PreferenceLayoutUtils.java"


# direct methods
.method public static getExtraPaddingByLevel(Landroid/content/Context;I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 17
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lmiuix/preference/R$dimen;->miuix_appcompat_two_state_extra_padding_horizontal_large:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 15
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lmiuix/preference/R$dimen;->miuix_appcompat_two_state_extra_padding_horizontal_small:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
