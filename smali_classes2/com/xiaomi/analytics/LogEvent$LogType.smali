.class public final enum Lcom/xiaomi/analytics/LogEvent$LogType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/analytics/LogEvent$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

.field public static final enum TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

.field public static final enum TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    const/4 v1, 0x0

    const-string v2, "TYPE_EVENT"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/analytics/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    const/4 v2, 0x1

    const-string v3, "TYPE_AD"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/analytics/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/analytics/LogEvent$LogType;

    sget-object v3, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    iput p3, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1

    const-class v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v0}, [Lcom/xiaomi/analytics/LogEvent$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    return p0
.end method
