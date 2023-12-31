.class Lcom/xiaomi/onetrack/util/x$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/util/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/util/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Lcom/xiaomi/onetrack/util/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/util/x;-><init>(Lcom/xiaomi/onetrack/util/y;)V

    sput-object v0, Lcom/xiaomi/onetrack/util/x$a;->a:Lcom/xiaomi/onetrack/util/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/util/x;
    .locals 1

    .line 86
    sget-object v0, Lcom/xiaomi/onetrack/util/x$a;->a:Lcom/xiaomi/onetrack/util/x;

    return-object v0
.end method
