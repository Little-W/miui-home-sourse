.class public Lcom/miui/home/launcher/common/PhoneModelUtils;
.super Ljava/lang/Object;
.source "PhoneModelUtils.java"


# static fields
.field private static final MARKET_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product.marketname"

    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/common/PhoneModelUtils;->MARKET_NAME:Ljava/lang/String;

    return-void
.end method

.method private static getPhoneModel()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/miui/home/launcher/common/PhoneModelUtils;->MARKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/miui/home/launcher/common/PhoneModelUtils;->MARKET_NAME:Ljava/lang/String;

    return-object v0

    .line 17
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static isRedmiKSeries()Z
    .locals 2

    .line 37
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^Redmi[\\s]*K[0-9]+.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRedmiSeries()Z
    .locals 2

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^Redmi.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRedmiXSeries()Z
    .locals 2

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^Redmi[\\s]*[0-9]+X.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomiDigitSeries()Z
    .locals 2

    .line 25
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^MI[\\s]*[0-9]+[\\s]*(Pro.*|Explorer.*)*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomiMIXSeries()Z
    .locals 2

    .line 29
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i).*\\bMIX\\b.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomiSeries()Z
    .locals 2

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/common/PhoneModelUtils;->getPhoneModel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?i)^MI.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
