.class public final enum Lcom/xiaomi/onetrack/OneTrack$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public static final enum PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field public static final enum SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$Mode;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    const/4 v1, 0x0

    const-string v2, "APP"

    const-string v3, "app"

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 34
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    const/4 v2, 0x1

    const-string v3, "PLUGIN"

    const-string v4, "plugin"

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 35
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    const/4 v3, 0x2

    const-string v4, "SDK"

    const-string v5, "sdk"

    invoke-direct {v0, v4, v3, v5}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 32
    sget-object v4, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->b:[Lcom/xiaomi/onetrack/OneTrack$Mode;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$Mode;
    .locals 1

    .line 32
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$Mode;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->b:[Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    return-object p0
.end method
