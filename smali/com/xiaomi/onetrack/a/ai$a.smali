.class Lcom/xiaomi/onetrack/a/ai$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/a/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/xiaomi/onetrack/a/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/xiaomi/onetrack/a/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/a/ai;-><init>(Lcom/xiaomi/onetrack/a/aj;)V

    sput-object v0, Lcom/xiaomi/onetrack/a/ai$a;->a:Lcom/xiaomi/onetrack/a/ai;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/a/ai;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaomi/onetrack/a/ai$a;->a:Lcom/xiaomi/onetrack/a/ai;

    return-object v0
.end method
