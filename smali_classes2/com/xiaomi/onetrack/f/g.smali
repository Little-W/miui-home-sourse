.class public Lcom/xiaomi/onetrack/f/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackApp"

.field private static b:Lcom/xiaomi/onetrack/f/g;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/onetrack/f/h;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/onetrack/f/h;-><init>(Lcom/xiaomi/onetrack/f/g;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/onetrack/f/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/onetrack/f/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/onetrack/f/g;->b:Lcom/xiaomi/onetrack/f/g;

    :cond_0
    return-void
.end method
