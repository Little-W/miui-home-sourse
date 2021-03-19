.class public Lcom/market/sdk/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# static fields
.field public static final USER_CURRENT:I

.field public static final USER_OWNER:I

.field private static sUserHandleClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    const-class v0, Landroid/os/UserHandle;

    const-class v1, Landroid/os/UserHandle;

    const-string v2, "USER_CURRENT"

    const-string v3, "I"

    invoke-static {v0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    sput v0, Lcom/market/sdk/compat/UserHandleCompat;->USER_CURRENT:I

    .line 18
    const-class v0, Landroid/os/UserHandle;

    const-class v1, Landroid/os/UserHandle;

    const-string v2, "USER_OWNER"

    const-string v3, "I"

    invoke-static {v0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput v0, Lcom/market/sdk/compat/UserHandleCompat;->USER_OWNER:I

    const-string v0, "android.os.UserHandle"

    .line 24
    invoke-static {v0}, Lcom/market/sdk/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/compat/UserHandleCompat;->sUserHandleClazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXSpaceUserId()I
    .locals 4

    const-string v0, "miui.securityspace.XSpaceUserHandle"

    .line 33
    invoke-static {v0}, Lcom/market/sdk/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x3e7

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "USER_XSPACE"

    const-string v3, "I"

    .line 38
    invoke-static {v0, v0, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static myUserId()I
    .locals 5

    .line 28
    sget-object v0, Lcom/market/sdk/compat/UserHandleCompat;->sUserHandleClazz:Ljava/lang/Class;

    const-string v1, "myUserId"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 29
    invoke-static {v2, v4}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v0, v1, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
