.class Lcom/xiaomi/onetrack/h/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/h/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/onetrack/h/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/xiaomi/onetrack/h/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/onetrack/h/t;-><init>(Lcom/xiaomi/onetrack/h/u;)V

    sput-object v0, Lcom/xiaomi/onetrack/h/t$a;->a:Lcom/xiaomi/onetrack/h/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/xiaomi/onetrack/h/t;
    .locals 1

    .line 56
    sget-object v0, Lcom/xiaomi/onetrack/h/t$a;->a:Lcom/xiaomi/onetrack/h/t;

    return-object v0
.end method
