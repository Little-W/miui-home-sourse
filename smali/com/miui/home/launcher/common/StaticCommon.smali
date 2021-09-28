.class public Lcom/miui/home/launcher/common/StaticCommon;
.super Ljava/lang/Object;
.source "StaticCommon.java"


# static fields
.field public static sUserHandleCurrentUserId:I

.field public static sUserHandleUserNullId:I

.field public static sUserHandleUserOwnerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "USER_CURRENT"

    const/4 v1, -0x2

    .line 19
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/StaticCommon;->getUserHandleId(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleCurrentUserId:I

    const-string v0, "USER_NULL"

    const/16 v1, -0x2710

    .line 20
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/StaticCommon;->getUserHandleId(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleUserNullId:I

    const-string v0, "USER_OWNER"

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/StaticCommon;->getUserHandleId(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/StaticCommon;->sUserHandleUserOwnerId:I

    return-void
.end method

.method private static getUserHandleId(Ljava/lang/String;I)I
    .locals 2

    .line 26
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "StaticCommon"

    .line 28
    return p1
.end method
