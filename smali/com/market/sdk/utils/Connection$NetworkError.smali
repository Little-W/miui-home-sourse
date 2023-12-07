.class public final enum Lcom/market/sdk/utils/Connection$NetworkError;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market/sdk/utils/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/utils/Connection$NetworkError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum AUTH_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum CLIENT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum NETWORK_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum OK:Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum RESULT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum SERVER_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum UNKNOWN_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

.field public static final enum URL_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-direct {v0, v2, v1}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v2, 0x1

    const-string v3, "URL_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->URL_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v3, 0x2

    const-string v4, "NETWORK_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->NETWORK_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v4, 0x3

    const-string v5, "AUTH_ERROR"

    invoke-direct {v0, v5, v4}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->AUTH_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v5, 0x4

    const-string v6, "CLIENT_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->CLIENT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v6, 0x5

    const-string v7, "SERVER_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->SERVER_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v7, 0x6

    const-string v8, "RESULT_ERROR"

    invoke-direct {v0, v8, v7}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->RESULT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN_ERROR"

    invoke-direct {v0, v9, v8}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->UNKNOWN_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/market/sdk/utils/Connection$NetworkError;

    sget-object v9, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v9, v0, v1

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->URL_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->NETWORK_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->AUTH_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->CLIENT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->SERVER_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->RESULT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->UNKNOWN_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v8

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->$VALUES:[Lcom/market/sdk/utils/Connection$NetworkError;

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

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 1

    const-class v0, Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 1

    sget-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->$VALUES:[Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-virtual {v0}, [Lcom/market/sdk/utils/Connection$NetworkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/utils/Connection$NetworkError;

    return-object v0
.end method
