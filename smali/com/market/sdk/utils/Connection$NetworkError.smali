.class public final enum Lcom/market/sdk/utils/Connection$NetworkError;
.super Ljava/lang/Enum;
.source "Connection.java"


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

    .line 36
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    .line 37
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "URL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->URL_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    .line 38
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "NETWORK_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->NETWORK_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    .line 39
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "AUTH_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->AUTH_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    .line 40
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "CLIENT_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->CLIENT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    .line 41
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "SERVER_ERROR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->SERVER_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    .line 42
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "RESULT_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->RESULT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    .line 43
    new-instance v0, Lcom/market/sdk/utils/Connection$NetworkError;

    const-string v1, "UNKNOWN_ERROR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/market/sdk/utils/Connection$NetworkError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->UNKNOWN_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    const/16 v0, 0x8

    .line 35
    new-array v0, v0, [Lcom/market/sdk/utils/Connection$NetworkError;

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->OK:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->URL_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->NETWORK_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->AUTH_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->CLIENT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->SERVER_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->RESULT_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/market/sdk/utils/Connection$NetworkError;->UNKNOWN_ERROR:Lcom/market/sdk/utils/Connection$NetworkError;

    aput-object v1, v0, v9

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 1

    .line 35
    const-class v0, Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/utils/Connection$NetworkError;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/utils/Connection$NetworkError;
    .locals 1

    .line 35
    sget-object v0, Lcom/market/sdk/utils/Connection$NetworkError;->$VALUES:[Lcom/market/sdk/utils/Connection$NetworkError;

    invoke-virtual {v0}, [Lcom/market/sdk/utils/Connection$NetworkError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/utils/Connection$NetworkError;

    return-object v0
.end method
