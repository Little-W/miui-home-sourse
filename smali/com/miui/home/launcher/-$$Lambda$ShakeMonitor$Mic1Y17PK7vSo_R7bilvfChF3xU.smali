.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$Mic1Y17PK7vSo_R7bilvfChF3xU;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$Mic1Y17PK7vSo_R7bilvfChF3xU;->f$0:Lcom/miui/home/launcher/ShakeMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$ShakeMonitor$Mic1Y17PK7vSo_R7bilvfChF3xU;->f$0:Lcom/miui/home/launcher/ShakeMonitor;

    invoke-static {v0}, Lcom/miui/home/launcher/ShakeMonitor;->lambda$onEditModeStateChanged$163(Lcom/miui/home/launcher/ShakeMonitor;)V

    return-void
.end method