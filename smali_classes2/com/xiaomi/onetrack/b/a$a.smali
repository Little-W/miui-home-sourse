.class Lcom/xiaomi/onetrack/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lcom/xiaomi/onetrack/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/b/a;-><init>(Lcom/xiaomi/onetrack/b/b;)V

    sput-object v0, Lcom/xiaomi/onetrack/b/a$a;->a:Lcom/xiaomi/onetrack/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/b/a;
    .locals 1

    .line 89
    sget-object v0, Lcom/xiaomi/onetrack/b/a$a;->a:Lcom/xiaomi/onetrack/b/a;

    return-object v0
.end method
