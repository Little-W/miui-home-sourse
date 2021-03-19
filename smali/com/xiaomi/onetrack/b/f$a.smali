.class Lcom/xiaomi/onetrack/b/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/xiaomi/onetrack/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/b/f;-><init>(Lcom/xiaomi/onetrack/b/g;)V

    sput-object v0, Lcom/xiaomi/onetrack/b/f$a;->a:Lcom/xiaomi/onetrack/b/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/b/f;
    .locals 1

    .line 40
    sget-object v0, Lcom/xiaomi/onetrack/b/f$a;->a:Lcom/xiaomi/onetrack/b/f;

    return-object v0
.end method
