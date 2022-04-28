.class Lcom/xiaomi/onetrack/b/p$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/b/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/xiaomi/onetrack/b/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/b/p;-><init>(Lcom/xiaomi/onetrack/b/q;)V

    sput-object v0, Lcom/xiaomi/onetrack/b/p$a;->a:Lcom/xiaomi/onetrack/b/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/b/p;
    .locals 1

    .line 35
    sget-object v0, Lcom/xiaomi/onetrack/b/p$a;->a:Lcom/xiaomi/onetrack/b/p;

    return-object v0
.end method
