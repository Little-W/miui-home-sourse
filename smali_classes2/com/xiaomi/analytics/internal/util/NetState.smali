.class public final enum Lcom/xiaomi/analytics/internal/util/NetState;
.super Ljava/lang/Enum;
.source "NetState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/analytics/internal/util/NetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum MN2G:Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum MN3G:Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum MN4G:Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum NONE:Lcom/xiaomi/analytics/internal/util/NetState;

.field public static final enum WIFI:Lcom/xiaomi/analytics/internal/util/NetState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const/4 v1, 0x0

    const-string v2, "WIFI"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->WIFI:Lcom/xiaomi/analytics/internal/util/NetState;

    .line 5
    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const/4 v2, 0x1

    const-string v3, "MN2G"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->MN2G:Lcom/xiaomi/analytics/internal/util/NetState;

    .line 6
    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const/4 v3, 0x2

    const-string v4, "MN3G"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->MN3G:Lcom/xiaomi/analytics/internal/util/NetState;

    .line 7
    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const/4 v4, 0x3

    const-string v5, "MN4G"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->MN4G:Lcom/xiaomi/analytics/internal/util/NetState;

    .line 8
    new-instance v0, Lcom/xiaomi/analytics/internal/util/NetState;

    const/4 v5, 0x4

    const-string v6, "NONE"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/analytics/internal/util/NetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaomi/analytics/internal/util/NetState;

    .line 3
    sget-object v6, Lcom/xiaomi/analytics/internal/util/NetState;->WIFI:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v6, v0, v1

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->MN2G:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->MN3G:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->MN4G:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/analytics/internal/util/NetState;->NONE:Lcom/xiaomi/analytics/internal/util/NetState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->$VALUES:[Lcom/xiaomi/analytics/internal/util/NetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/analytics/internal/util/NetState;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/analytics/internal/util/NetState;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaomi/analytics/internal/util/NetState;->$VALUES:[Lcom/xiaomi/analytics/internal/util/NetState;

    invoke-virtual {v0}, [Lcom/xiaomi/analytics/internal/util/NetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/analytics/internal/util/NetState;

    return-object v0
.end method
