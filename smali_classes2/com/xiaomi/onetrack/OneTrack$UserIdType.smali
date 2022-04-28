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

    .line 46
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const-string v1, "XIAOMI"

    const-string v2, "xiaomi"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->XIAOMI:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 47
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const-string v1, "PHONE_NUMBER"

    const-string v2, "phone_number"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->PHONE_NUMBER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 48
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const-string v1, "WEIXIN"

    const-string v2, "weixin"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIXIN:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 49
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const-string v1, "WEIBO"

    const-string v2, "weibo"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIBO:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 50
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const-string v1, "QQ"

    const-string v2, "qq"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->QQ:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 51
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const-string v1, "OTHER"

    const-string v2, "other"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->OTHER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    const/4 v0, 0x6

    .line 45
    new-array v0, v0, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->XIAOMI:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->PHONE_NUMBER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIXIN:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIBO:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->QQ:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->OTHER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    aput-object v1, v0, v8

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

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$UserIdType;
    .locals 1

    .line 45
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$UserIdType;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->b:[Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    return-object v0
.end method


# virtual methods
.method public getUserIdType()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->a:Ljava/lang/String;

    return-object v0
.end method
