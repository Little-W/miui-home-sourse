.class public final enum Lcom/market/sdk/utils/Constants$UpdateMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/utils/Constants$UpdateMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market/sdk/utils/Constants$UpdateMethod;

.field public static final enum DOWNLOAD_MANAGER:Lcom/market/sdk/utils/Constants$UpdateMethod;

.field public static final enum MARKET:Lcom/market/sdk/utils/Constants$UpdateMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/market/sdk/utils/Constants$UpdateMethod;

    const/4 v1, 0x0

    const-string v2, "MARKET"

    invoke-direct {v0, v2, v1}, Lcom/market/sdk/utils/Constants$UpdateMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Constants$UpdateMethod;->MARKET:Lcom/market/sdk/utils/Constants$UpdateMethod;

    new-instance v0, Lcom/market/sdk/utils/Constants$UpdateMethod;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD_MANAGER"

    invoke-direct {v0, v3, v2}, Lcom/market/sdk/utils/Constants$UpdateMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Constants$UpdateMethod;->DOWNLOAD_MANAGER:Lcom/market/sdk/utils/Constants$UpdateMethod;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/market/sdk/utils/Constants$UpdateMethod;

    sget-object v3, Lcom/market/sdk/utils/Constants$UpdateMethod;->MARKET:Lcom/market/sdk/utils/Constants$UpdateMethod;

    aput-object v3, v0, v1

    sget-object v1, Lcom/market/sdk/utils/Constants$UpdateMethod;->DOWNLOAD_MANAGER:Lcom/market/sdk/utils/Constants$UpdateMethod;

    aput-object v1, v0, v2

    sput-object v0, Lcom/market/sdk/utils/Constants$UpdateMethod;->$VALUES:[Lcom/market/sdk/utils/Constants$UpdateMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/utils/Constants$UpdateMethod;
    .locals 1

    const-class v0, Lcom/market/sdk/utils/Constants$UpdateMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/utils/Constants$UpdateMethod;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/utils/Constants$UpdateMethod;
    .locals 1

    sget-object v0, Lcom/market/sdk/utils/Constants$UpdateMethod;->$VALUES:[Lcom/market/sdk/utils/Constants$UpdateMethod;

    invoke-virtual {v0}, [Lcom/market/sdk/utils/Constants$UpdateMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/utils/Constants$UpdateMethod;

    return-object v0
.end method
