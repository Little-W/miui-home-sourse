.class public final enum Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/ServiceQualityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

.field public static final enum SUCCESS:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

.field public static final enum TIMEOUT:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    const-string v1, "SUCCESS"

    const-string v2, "ok"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->SUCCESS:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 16
    new-instance v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    const-string v1, "FAILED"

    const-string v2, "failed"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->FAILED:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    .line 17
    new-instance v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    const-string v1, "TIMEOUT"

    const-string v2, "timeout"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->TIMEOUT:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    const/4 v0, 0x3

    .line 14
    new-array v0, v0, [Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    sget-object v1, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->SUCCESS:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->FAILED:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->TIMEOUT:Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->b:[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;
    .locals 1

    .line 14
    const-class v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->b:[Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;

    return-object v0
.end method


# virtual methods
.method public getResultType()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/xiaomi/onetrack/ServiceQualityEvent$ResultType;->a:Ljava/lang/String;

    return-object v0
.end method
