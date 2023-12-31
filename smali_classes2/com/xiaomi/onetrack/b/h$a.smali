.class Lcom/xiaomi/onetrack/b/h$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/b/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/xiaomi/onetrack/b/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/b/h;-><init>(Lcom/xiaomi/onetrack/b/i;)V

    sput-object v0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/b/h;
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaomi/onetrack/b/h$a;->a:Lcom/xiaomi/onetrack/b/h;

    return-object v0
.end method
