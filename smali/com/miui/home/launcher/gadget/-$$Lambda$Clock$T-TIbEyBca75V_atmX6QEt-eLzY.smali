.class public final synthetic Lcom/miui/home/launcher/gadget/-$$Lambda$Clock$T-TIbEyBca75V_atmX6QEt-eLzY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/gadget/Clock;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/gadget/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$Clock$T-TIbEyBca75V_atmX6QEt-eLzY;->f$0:Lcom/miui/home/launcher/gadget/Clock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/gadget/-$$Lambda$Clock$T-TIbEyBca75V_atmX6QEt-eLzY;->f$0:Lcom/miui/home/launcher/gadget/Clock;

    invoke-static {v0}, Lcom/miui/home/launcher/gadget/Clock;->lambda$unregisterReceiver$1(Lcom/miui/home/launcher/gadget/Clock;)V

    return-void
.end method
