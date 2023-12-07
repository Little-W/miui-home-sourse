.class public final enum Lcom/xiaomi/onetrack/OneTrack$UserIdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserIdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum PHONE_NUMBER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum QQ:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum WEIBO:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum WEIXIN:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum XIAOMI:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$UserIdType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v1, 0x0

    const-string v2, "XIAOMI"

    const-string v3, "xiaomi"

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->XIAOMI:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v2, 0x1

    const-string v3, "PHONE_NUMBER"

    const-string v4, "phone_number"

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->PHONE_NUMBER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v3, 0x2

    const-string v4, "WEIXIN"

    const-string v5, "weixin"

    invoke-direct {v0, v4, v3, v5}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIXIN:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v4, 0x3

    const-string v5, "WEIBO"

    const-string v6, "weibo"

    invoke-direct {v0, v5, v4, v6}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIBO:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v5, 0x4

    const-string v6, "QQ"

    const-string v7, "qq"

    invoke-direct {v0, v6, v5, v7}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->QQ:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v6, 0x5

    const-string v7, "OTHER"

    const-string v8, "other"

    invoke-direct {v0, v7, v6, v8}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->OTHER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    sget-object v7, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->XIAOMI:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->PHONE_NUMBER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIXIN:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIBO:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->QQ:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->OTHER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->b:[Lcom/xiaomi/onetrack/OneTrack$UserIdType;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$UserIdType;
    .locals 1

    const-class v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$UserIdType;
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->b:[Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    return-object v0
.end method


# virtual methods
.method public getUserIdType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->a:Ljava/lang/String;

    return-object p0
.end method
