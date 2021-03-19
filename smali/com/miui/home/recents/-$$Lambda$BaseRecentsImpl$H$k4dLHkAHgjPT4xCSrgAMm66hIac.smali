.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H$k4dLHkAHgjPT4xCSrgAMm66hIac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl$H;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl$H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H$k4dLHkAHgjPT4xCSrgAMm66hIac;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$H;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$H$k4dLHkAHgjPT4xCSrgAMm66hIac;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$H;

    invoke-static {v0}, Lcom/miui/home/recents/BaseRecentsImpl$H;->lambda$handleMessage$1(Lcom/miui/home/recents/BaseRecentsImpl$H;)V

    return-void
.end method
