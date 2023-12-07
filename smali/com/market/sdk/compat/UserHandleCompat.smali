.class public Lcom/market/sdk/compat/UserHandleCompat;
.super Ljava/lang/Object;


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

    const-class v0, Landroid/os/UserHandle;

    const-class v1, Landroid/os/UserHandle;

    const-string v2, "I"

    const-string v3, "USER_CURRENT"

    invoke-static {v0, v1, v3, v2}, Lcom/market/sdk/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    sput v0, Lcom/market/sdk/compat/UserHandleCompat;->USER_CURRENT:I

    const-class v0, Landroid/os/UserHandle;

    const-class v1, Landroid/os/UserHandle;

    const-string v3, "USER_OWNER"

    invoke-static {v0, v1, v3, v2}, Lcom/market/sdk/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput v0, Lcom/market/sdk/compat/UserHandleCompat;->USER_OWNER:I

    const-string v0, "android.os.UserHandle"

    invoke-static {v0}, Lcom/market/sdk/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/market/sdk/compat/UserHandleCompat;->sUserHandleClazz:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXSpaceUserId()I
    .locals 4

    const-string v0, "miui.securityspace.XSpaceUserHandle"

    invoke-static {v0}, Lcom/market/sdk/utils/ReflectUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v1, 0x3e7

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "USER_XSPACE"

    const-string v3, "I"

    invoke-static {v0, v0, v2, v3}, Lcom/market/sdk/utils/ReflectUtils;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static myUserId()I
    .locals 4

    sget-object v0, Lcom/market/sdk/compat/UserHandleCompat;->sUserHandleClazz:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/market/sdk/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "myUserId"

    invoke-static {v0, v0, v3, v1, v2}, Lcom/market/sdk/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
