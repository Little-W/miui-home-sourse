.class public Lcom/xiaomi/onetrack/util/DeviceUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/onetrack/util/DeviceUtil$a;,
        Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Ljava/lang/String; = null

.field private static C:Ljava/lang/String; = null

.field private static D:Ljava/lang/String; = null

.field private static E:Ljava/lang/String; = null

.field private static F:Ljava/lang/Boolean; = null

.field private static G:Ljava/lang/String; = null

.field private static volatile H:Z = false

.field static final a:I = 0xf

.field static final b:I = 0x6

.field private static final c:Ljava/lang/String; = "DeviceUtil"

.field private static final d:Ljava/lang/String; = ""

.field private static final e:Ljava/lang/String; = "ro.build.description"

.field private static final f:I = 0xf

.field private static final g:I = 0xe

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/Object;

.field private static l:Ljava/lang/reflect/Method;

.field private static m:Ljava/lang/reflect/Method;

.field private static volatile n:Ljava/lang/String;

.field private static volatile o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 84
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    .line 85
    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DeviceUtil"

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sGetProp init failed ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    const-string v2, "miui.telephony.TelephonyManagerEx"

    .line 90
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getDefault"

    .line 91
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    const-string v3, "getImeiList"

    .line 92
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    const-string v3, "getMeidList"

    .line 93
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->j:Ljava/lang/reflect/Method;

    const-string v3, "getSubscriberIdForSlot"

    .line 94
    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "DeviceUtil"

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TelephonyManagerEx init failed ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_1
    :try_start_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const-string v2, "android.telephony.TelephonyManager"

    .line 100
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getImei"

    .line 101
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "DeviceUtil"

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sGetImeiForSlot init failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 204
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    return-object p0

    .line 207
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->D(Landroid/content/Context;)Ljava/util/List;

    .line 208
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 209
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static B(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 390
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 392
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "phone"

    .line 393
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 394
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->l:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 400
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "DeviceUtil"

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImeiListAboveLollipop failed ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static C(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 415
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.telephony.TelephonyManager"

    .line 416
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 417
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->n()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "getDefault"

    .line 418
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 419
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 420
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    const-string v2, "getDefault"

    const/4 v4, 0x1

    .line 425
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Object;

    .line 426
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getDefault"

    .line 427
    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    .line 428
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-virtual {v1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_2
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceUtil"

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeiListBelowLollipop failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static D(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 450
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    sget-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 453
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 454
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 455
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v3, "DeviceUtil"

    .line 459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryMeidList failed ex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_1
    const-string v0, "android.telephony.TelephonyManager"

    .line 465
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "phone"

    .line 467
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    .line 471
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    const-string v3, "getMeid"

    .line 472
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 474
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p0, v1

    goto :goto_0

    :cond_2
    const-string v3, "getDeviceId"

    .line 477
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 479
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object p0, v1

    .line 484
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p0

    const-string v0, "DeviceUtil"

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryMeidList->getMeid failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method private static E(Landroid/content/Context;)Z
    .locals 1

    .line 1116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static F(Landroid/content/Context;)Z
    .locals 2

    .line 1139
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1142
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static a(J)J
    .locals 6

    long-to-float p0, p0

    float-to-double v0, p0

    const-wide v2, 0x408c200000000000L    # 900.0

    cmpl-double p1, v0, v2

    const/high16 v0, 0x447a0000    # 1000.0f

    if-lez p1, :cond_0

    div-float/2addr p0, v0

    :cond_0
    float-to-double v4, p0

    cmpl-double p1, v4, v2

    if-lez p1, :cond_1

    div-float/2addr p0, v0

    :cond_1
    float-to-double v4, p0

    cmpl-double p1, v4, v2

    if-lez p1, :cond_2

    div-float/2addr p0, v0

    :cond_2
    float-to-long p0, p0

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->r(Landroid/content/Context;)Ljava/util/List;

    .line 114
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 115
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 329
    sput-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 604
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 605
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/telephony/SubscriptionManager;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 951
    new-array v0, v0, [Ljava/lang/String;

    .line 953
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const-string v1, "getSubId"

    .line 954
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {p1, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    check-cast v1, [J

    const-string v5, "getSubscriberId"

    .line 955
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aget-wide v7, v1, v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_0

    :cond_0
    const-string v1, "getSubId"

    .line 957
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {p1, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {v1, p3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    const-string v5, "getSubscriberId"

    .line 958
    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {p0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v4

    invoke-virtual {v5, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v4

    .line 960
    :goto_0
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 961
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/reflect/Method;

    sget-object p1, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v4

    .line 962
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->m:Ljava/lang/reflect/Method;

    sget-object p1, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v3

    goto/16 :goto_1

    .line 964
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v2, :cond_2

    const-string v1, "getSubId"

    .line 965
    new-array v2, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    check-cast p1, [J

    const-string p3, "getSubscriberId"

    .line 966
    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    invoke-virtual {p0, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p3, v3, [Ljava/lang/Object;

    aget-wide v1, p1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p3, v4

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v3

    goto :goto_1

    :cond_2
    const-string v1, "getSubId"

    .line 968
    new-array v2, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    const-string p3, "getSubscriberId"

    .line 969
    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    invoke-virtual {p0, p3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p3, v3, [Ljava/lang/Object;

    aget p1, p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v4

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "DeviceUtil"

    .line 973
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getImsiFromLToP: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method private static b(J)J
    .locals 9

    const-wide v0, 0x1dcd65000L

    cmp-long v0, p0, v0

    const-wide/32 v1, 0x3b9aca00

    if-ltz v0, :cond_0

    .line 1197
    div-long v3, p0, v1

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-long v3, v3

    mul-long/2addr v3, v1

    goto :goto_0

    .line 1199
    :cond_0
    div-long v3, p0, v1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    mul-long/2addr v3, v1

    :goto_0
    cmp-long v0, v3, p0

    if-gez v0, :cond_1

    .line 1204
    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(J)J

    move-result-wide v3

    .line 1207
    :cond_1
    div-long/2addr v3, v1

    return-wide v3
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.name"

    .line 1019
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 121
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->u:Ljava/lang/String;

    return-object p0

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->u:Ljava/lang/String;

    .line 127
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->u:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 576
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 577
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "DeviceUtil"

    .line 580
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProp failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static b(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 613
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 614
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/telephony/SubscriptionManager;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 980
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "getSubscriptionIds"

    .line 982
    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v3, p3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    if-eqz v3, :cond_0

    const-string v4, "getSubscriberId"

    .line 984
    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "DeviceUtil"

    .line 987
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get imsi1 above Android Q exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    const-string v3, "getSubscriptionIds"

    .line 991
    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_1

    const-string p3, "getSubscriberId"

    .line 993
    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    invoke-virtual {p0, p3, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p3, v1, [Ljava/lang/Object;

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "DeviceUtil"

    .line 996
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "get imsi2 above Android Q exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static c(J)J
    .locals 9

    const-wide/16 v0, 0x1

    move-wide v2, v0

    move-wide v4, v2

    :cond_0
    :goto_0
    mul-long v6, v2, v4

    cmp-long v8, v6, p0

    if-gez v8, :cond_1

    const/4 v6, 0x1

    shl-long/2addr v2, v6

    const-wide/16 v6, 0x200

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_1
    return-wide v6
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1023
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->y:Ljava/lang/String;

    return-object p0

    .line 136
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->y:Ljava/lang/String;

    .line 139
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->y:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 622
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.marketname"

    .line 1027
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->A:Ljava/lang/String;

    return-object p0

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 149
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->A:Ljava/lang/String;

    .line 151
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->A:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 626
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1031
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    return-object p0

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->r(Landroid/content/Context;)Ljava/util/List;

    .line 161
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 162
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 947
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "ro.product.model.real"

    .line 1056
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceUtil"

    const-string v2, "getModelReal Exception: "

    .line 1062
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 168
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->v:Ljava/lang/String;

    return-object p0

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 173
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->v:Ljava/lang/String;

    .line 174
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->v:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 1069
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceUtil"

    const-string v2, "getModDevice Exception: "

    .line 1072
    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 180
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->z:Ljava/lang/String;

    return-object p0

    .line 183
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->z:Ljava/lang/String;

    .line 186
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->z:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.build.description"

    const-string v1, ""

    .line 1082
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 192
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->B:Ljava/lang/String;

    return-object p0

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->B:Ljava/lang/String;

    .line 198
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->B:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "ro.product.manufacturer"

    const-string v1, ""

    .line 1087
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceUtil"

    .line 1089
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getProductManufacturer e"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, ""

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 215
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->w:Ljava/lang/String;

    return-object p0

    .line 218
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->w:Ljava/lang/String;

    .line 221
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->w:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static j()J
    .locals 5

    .line 1154
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1155
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 1156
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    goto :goto_0

    .line 1158
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v1, v3

    :goto_0
    const-wide/32 v3, 0x40000000

    .line 1161
    div-long/2addr v1, v3

    return-wide v1
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 227
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->C:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->C:Ljava/lang/String;

    return-object p0

    .line 230
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->C:Ljava/lang/String;

    .line 233
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->C:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static k()Ljava/lang/String;
    .locals 5

    .line 1167
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1168
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 1169
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    goto :goto_0

    .line 1171
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v1, v3

    :goto_0
    const-string v0, "%dGB"

    const/4 v3, 0x1

    .line 1174
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 239
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->q:Ljava/lang/String;

    return-object p0

    .line 242
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 243
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->q:Ljava/lang/String;

    .line 245
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->q:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static l()J
    .locals 5

    .line 1180
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1181
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 1182
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v3

    mul-long/2addr v1, v3

    goto :goto_0

    .line 1184
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v1, v3

    .line 1187
    :goto_0
    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 251
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    return-object p0

    .line 254
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    .line 257
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 263
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->x:Ljava/lang/String;

    return-object p0

    .line 266
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->x:Ljava/lang/String;

    .line 269
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->x:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 376
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :try_start_0
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "DeviceUtil"

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImeiListFromMiui failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 275
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->E:Ljava/lang/String;

    return-object p0

    .line 278
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->E:Ljava/lang/String;

    .line 281
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->E:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static n()Z
    .locals 3

    const-string v0, "dsds"

    const-string v1, "persist.radio.multisim.config"

    .line 560
    invoke-static {v1}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 563
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lcsh92_wet_jb9"

    .line 564
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lcsh92_wet_tdd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HM2013022"

    .line 565
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HM2013023"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "armani"

    .line 566
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HM2014011"

    .line 567
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HM2014012"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 287
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;

    return-object p0

    .line 291
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.miui.analytics.server.AnalyticsProvider/aaid"

    .line 292
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    sput-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "android.provider.MiuiSettings$Ad"

    .line 298
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAaid"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 299
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 301
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;

    .line 303
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->s:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceUtil"

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAaid failed ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static o()Z
    .locals 4

    .line 586
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    return v1

    .line 589
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "persist.radio.modem"

    .line 590
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HM2014812"

    .line 591
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "HM2014821"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "gucci"

    .line 592
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ct"

    const-string v3, "persist.sys.modem"

    invoke-static {v3}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "CDMA"

    .line 593
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "HM1AC"

    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LTE-X5-ALL"

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LTE-CT"

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MI 3C"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 313
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    return-object p0

    .line 317
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 320
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$GAIDClient;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    .line 323
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->t:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static p()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "miui.os.Build"

    .line 1096
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "IS_TABLET"

    .line 1098
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "DeviceUtil"

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get miui.os.Build Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-string v2, "miui.util.FeatureParser"

    .line 1104
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "getBoolean"

    const/4 v4, 0x2

    .line 1106
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1107
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "is_pad"

    aput-object v4, v3, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    const-string v2, "DeviceUtil"

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get miui.util.FeatureParser Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public static q(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 333
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->r(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 335
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 336
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 337
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static r(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 350
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 351
    sget-boolean v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->H:Z

    if-eqz v0, :cond_0

    return-object v2

    .line 355
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->m()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_1

    .line 357
    :cond_2
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3

    .line 358
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->B(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    move-object v2, p0

    goto :goto_1

    .line 360
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->C(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    move-object v2, p0

    .line 363
    :goto_1
    sput-boolean v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->H:Z

    :cond_4
    if-eqz v2, :cond_5

    .line 365
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 366
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 367
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    .line 368
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    .line 369
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->o:Ljava/lang/String;

    :cond_5
    return-object v2
.end method

.method public static s(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 499
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->D(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 501
    new-instance v0, Lcom/xiaomi/onetrack/util/h;

    invoke-direct {v0}, Lcom/xiaomi/onetrack/util/h;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 507
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 508
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceUtil"

    const-string v1, "getMeidListMd5 e"

    .line 513
    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static t(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 520
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->n()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "android.telephony.TelephonyManager"

    .line 524
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 526
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_1

    const-string v3, "phone"

    .line 527
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v4, "telephony_subscription_service"

    .line 528
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    const-string v4, "android.telephony.SubscriptionManager"

    .line 529
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 530
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-ge v7, v8, :cond_0

    .line 531
    invoke-static {v2, v4, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v5

    .line 532
    invoke-static {v2, v4, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v6

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {v2, v4, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v5

    .line 535
    invoke-static {v2, v4, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v6

    :goto_0
    move-object v2, p0

    move-object p0, v5

    goto :goto_1

    :cond_1
    const-string p0, "getDefault"

    .line 538
    new-array v3, v6, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    const-string v3, "getDefault"

    .line 539
    new-array v4, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 541
    :goto_1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string p0, ""

    :goto_2
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    invoke-static {v2}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const-string v2, ""

    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    const-string v2, "phone"

    .line 545
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 546
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    .line 547
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "DeviceUtil"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsiList failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    const-string p0, "DeviceUtil"

    const-string v0, "getImsiList failed with on permission"

    .line 550
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-object v1
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 632
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 633
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string p0, "android.os.Build"

    .line 635
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getSerial"

    const/4 v2, 0x0

    .line 636
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 638
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DeviceUtil"

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "querySerial failed ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    :cond_0
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 647
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 648
    sput-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->r:Ljava/lang/String;

    return-object v1

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1004
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 1006
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1007
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/onetrack/d/d;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceUtil"

    .line 1012
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getImeiListMd5 failed!"

    invoke-static {v0, v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1035
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    return-object p0

    .line 1038
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Pad"

    .line 1039
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    .line 1040
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    return-object p0

    .line 1047
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->F(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Tv"

    .line 1048
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    .line 1049
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->G:Ljava/lang/String;

    return-object p0

    :cond_2
    const-string p0, "Phone"

    return-object p0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 1

    .line 1132
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->F:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1133
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil$a;->a(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->F:Ljava/lang/Boolean;

    .line 1135
    :cond_0
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->F:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1148
    invoke-static {}, Lcom/xiaomi/onetrack/util/oaid/a;->a()Lcom/xiaomi/onetrack/util/oaid/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/util/oaid/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "window"

    .line 1250
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1251
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1252
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1253
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 1254
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 1256
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_0
    const-string p0, "%d*%d"

    const/4 v1, 0x2

    .line 1258
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
