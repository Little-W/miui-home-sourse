.class public Lcom/miui/home/launcher/LayoutCommandParser;
.super Ljava/lang/Object;
.source "LayoutCommandParser.java"


# direct methods
.method private static checkBuildProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3c85367

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x164fe751

    if-eq v0, v1, :cond_1

    const v1, 0x4cba2b13    # 9.7605784E7f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "IS_CM_CUSTOMIZATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "IS_HONGMI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "BRAND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 51
    :pswitch_0
    sget-boolean p0, Lmiui/os/Build;->IS_HONGMI:Z

    if-nez p0, :cond_4

    sget-object p0, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    const-string v0, "Redmi"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "Redmi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 49
    :pswitch_1
    sget-object p0, Lmiui/os/Build;->BRAND:Ljava/lang/String;

    return-object p0

    .line 47
    :pswitch_2
    sget-boolean p0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs checkDevices([Ljava/lang/String;)Z
    .locals 5

    .line 36
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 37
    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static checkInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/ScreenUtils;->isAlreadyInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static checkUltimate()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isXiaomiDigitSeries()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isXiaomiMIXSeries()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isRedmiKSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isRedmiButNotHighEndSeries()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isRedmiSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isRedmiKSeries()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isRedmiXSeries()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isXiaomiOrRedmiKSeries()Z
    .locals 1

    .line 71
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isXiaomiSeries()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isRedmiKSeries()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "Launcher.Command"

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "methodName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",methodParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",methodResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "checkInstalled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "checkDevices"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string v0, "isRedmiKSeries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "checkUltimate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "checkBuildProperty"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "isRedmiButNotHighEndSeries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "isXiaomiOrRedmiKSeries"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    .line 29
    :pswitch_0
    invoke-static {}, Lcom/miui/home/launcher/LayoutCommandParser;->isXiaomiOrRedmiKSeries()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 27
    :pswitch_1
    invoke-static {}, Lcom/miui/home/launcher/LayoutCommandParser;->isRedmiButNotHighEndSeries()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 25
    :pswitch_2
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->isRedmiKSeries()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 23
    :pswitch_3
    invoke-static {}, Lcom/miui/home/launcher/LayoutCommandParser;->checkUltimate()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 21
    :pswitch_4
    invoke-static {p1}, Lcom/miui/home/launcher/LayoutCommandParser;->checkInstalled(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 19
    :pswitch_5
    invoke-static {p1}, Lcom/miui/home/launcher/LayoutCommandParser;->checkBuildProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_6
    const-string p0, ","

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/LayoutCommandParser;->checkDevices([Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79efa883 -> :sswitch_6
        -0x479ac3a5 -> :sswitch_5
        -0x3a548dc5 -> :sswitch_4
        0x26e41579 -> :sswitch_3
        0x39fe3e5f -> :sswitch_2
        0x595b26b5 -> :sswitch_1
        0x6f669b52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
