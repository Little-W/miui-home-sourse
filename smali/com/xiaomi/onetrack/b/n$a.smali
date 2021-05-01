.class Lcom/xiaomi/onetrack/b/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/b/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/b/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/xiaomi/onetrack/b/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/b/n;-><init>(Lcom/xiaomi/onetrack/b/o;)V

    sput-object v0, Lcom/xiaomi/onetrack/b/n$a;->a:Lcom/xiaomi/onetrack/b/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/b/n;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaomi/onetrack/b/n$a;->a:Lcom/xiaomi/onetrack/b/n;

    return-object v0
.end method
