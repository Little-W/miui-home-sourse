.class public final enum Lcom/market/sdk/AbTestIdentifier;
.super Ljava/lang/Enum;
.source "AbTestIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/market/sdk/AbTestIdentifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market/sdk/AbTestIdentifier;

.field public static final enum ANDROID_ID:Lcom/market/sdk/AbTestIdentifier;

.field public static final enum IMEI_MD5:Lcom/market/sdk/AbTestIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/market/sdk/AbTestIdentifier;

    const/4 v1, 0x0

    const-string v2, "IMEI_MD5"

    invoke-direct {v0, v2, v1}, Lcom/market/sdk/AbTestIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/AbTestIdentifier;->IMEI_MD5:Lcom/market/sdk/AbTestIdentifier;

    new-instance v0, Lcom/market/sdk/AbTestIdentifier;

    const/4 v2, 0x1

    const-string v3, "ANDROID_ID"

    invoke-direct {v0, v3, v2}, Lcom/market/sdk/AbTestIdentifier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market/sdk/AbTestIdentifier;->ANDROID_ID:Lcom/market/sdk/AbTestIdentifier;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/market/sdk/AbTestIdentifier;

    .line 7
    sget-object v3, Lcom/market/sdk/AbTestIdentifier;->IMEI_MD5:Lcom/market/sdk/AbTestIdentifier;

    aput-object v3, v0, v1

    sget-object v1, Lcom/market/sdk/AbTestIdentifier;->ANDROID_ID:Lcom/market/sdk/AbTestIdentifier;

    aput-object v1, v0, v2

    sput-object v0, Lcom/market/sdk/AbTestIdentifier;->$VALUES:[Lcom/market/sdk/AbTestIdentifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market/sdk/AbTestIdentifier;
    .locals 1

    .line 7
    const-class v0, Lcom/market/sdk/AbTestIdentifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/market/sdk/AbTestIdentifier;

    return-object p0
.end method

.method public static values()[Lcom/market/sdk/AbTestIdentifier;
    .locals 1

    .line 7
    sget-object v0, Lcom/market/sdk/AbTestIdentifier;->$VALUES:[Lcom/market/sdk/AbTestIdentifier;

    invoke-virtual {v0}, [Lcom/market/sdk/AbTestIdentifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market/sdk/AbTestIdentifier;

    return-object v0
.end method
