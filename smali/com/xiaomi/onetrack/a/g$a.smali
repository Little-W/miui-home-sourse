.class Lcom/xiaomi/onetrack/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/xiaomi/onetrack/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/a/g;-><init>(Lcom/xiaomi/onetrack/a/h;)V

    sput-object v0, Lcom/xiaomi/onetrack/a/g$a;->a:Lcom/xiaomi/onetrack/a/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/a/g;
    .locals 1

    .line 42
    sget-object v0, Lcom/xiaomi/onetrack/a/g$a;->a:Lcom/xiaomi/onetrack/a/g;

    return-object v0
.end method
