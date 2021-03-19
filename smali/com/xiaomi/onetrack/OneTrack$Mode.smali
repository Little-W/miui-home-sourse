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

    .line 30
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    const-string v1, "APP"

    const-string v2, "app"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 31
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    const-string v1, "PLUGIN"

    const-string v2, "plugin"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    .line 32
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    const-string v1, "SDK"

    const-string v2, "sdk"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/onetrack/OneTrack$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->APP:Lcom/xiaomi/onetrack/OneTrack$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->PLUGIN:Lcom/xiaomi/onetrack/OneTrack$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/onetrack/OneTrack$Mode;->SDK:Lcom/xiaomi/onetrack/OneTrack$Mode;

    aput-object v1, v0, v5

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$Mode;
    .locals 1

    .line 29
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$Mode;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$Mode;
    .locals 1

    .line 29
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$Mode;->b:[Lcom/xiaomi/onetrack/OneTrack$Mode;

    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$Mode;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack$Mode;->a:Ljava/lang/String;

    return-object v0
.end method
