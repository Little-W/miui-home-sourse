.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$7p1hR139Zjgx_iUkK1aCFrqAbKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/ShakeMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShakeMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$7p1hR139Zjgx_iUkK1aCFrqAbKw;->f$0:Lcom/miui/home/launcher/ShakeMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$7p1hR139Zjgx_iUkK1aCFrqAbKw;->f$0:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShakeMonitor;->lambda$onEditModeStateChanged$1$ShakeMonitor()V

    return-void
.end method
