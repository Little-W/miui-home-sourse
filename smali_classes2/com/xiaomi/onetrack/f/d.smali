.class public Lcom/xiaomi/onetrack/f/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "EventTrack"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/f/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/f/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/onetrack/f/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaomi/onetrack/f/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method
