.class public Lcom/xiaomi/analytics/internal/util/NetworkUtils;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "NetworkUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getNetState(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 4

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->WIFI:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->WIFI:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0

    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->getNetworkClass(I)Lcom/xiaomi/analytics/internal/util/NetState;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->TAG:Ljava/lang/String;

    const-string v1, "getNetState"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/analytics/internal/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0
.end method

.method private static getNetworkClass(I)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->MN4G:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->MN3G:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/analytics/internal/util/NetState;->MN2G:Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/analytics/internal/util/NetworkUtils;->getNetState(Landroid/content/Context;)Lcom/xiaomi/analytics/internal/util/NetState;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetworkUtils$1;->$SwitchMap$com$xiaomi$analytics$internal$util$NetState:[I

    invoke-virtual {p0}, Lcom/xiaomi/analytics/internal/util/NetState;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v0
.end method
