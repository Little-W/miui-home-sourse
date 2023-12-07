.class public final enum Lcom/xiaomi/analytics/LogEvent$IdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/analytics/LogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/analytics/LogEvent$IdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_AAID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_ANDROID_ID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_GAID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_IMEI:Lcom/xiaomi/analytics/LogEvent$IdType;

.field public static final enum TYPE_MAC:Lcom/xiaomi/analytics/LogEvent$IdType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v1, 0x0

    const-string v2, "TYPE_DEFAULT"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v2, 0x1

    const-string v3, "TYPE_IMEI"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_IMEI:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v3, 0x2

    const-string v4, "TYPE_MAC"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_MAC:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v4, 0x3

    const-string v5, "TYPE_ANDROID_ID"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_ANDROID_ID:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v5, 0x4

    const-string v6, "TYPE_AAID"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_AAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v6, 0x5

    const-string v7, "TYPE_GAID"

    invoke-direct {v0, v7, v6, v6}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v7, 0x6

    const-string v8, "TYPE_GUID"

    invoke-direct {v0, v8, v7, v7}, Lcom/xiaomi/analytics/LogEvent$IdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/analytics/LogEvent$IdType;

    sget-object v8, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v8, v0, v1

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_IMEI:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_MAC:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_ANDROID_ID:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_AAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GAID:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_GUID:Lcom/xiaomi/analytics/LogEvent$IdType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$IdType;

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

    iput p1, p0, Lcom/xiaomi/analytics/LogEvent$IdType;->mValue:I

    iput p3, p0, Lcom/xiaomi/analytics/LogEvent$IdType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/LogEvent$IdType;
    .locals 1

    const-class v0, Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/analytics/LogEvent$IdType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/analytics/LogEvent$IdType;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-virtual {v0}, [Lcom/xiaomi/analytics/LogEvent$IdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/analytics/LogEvent$IdType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/analytics/LogEvent$IdType;->mValue:I

    return p0
.end method
