.class public final synthetic Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$10$Oh4pU9W-UN6NO_gbhtPy9AVJWkM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl$10;

.field private final synthetic f$1:Landroid/content/Intent;

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl$10;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$10$Oh4pU9W-UN6NO_gbhtPy9AVJWkM;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$10;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$10$Oh4pU9W-UN6NO_gbhtPy9AVJWkM;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$10$Oh4pU9W-UN6NO_gbhtPy9AVJWkM;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$10$Oh4pU9W-UN6NO_gbhtPy9AVJWkM;->f$0:Lcom/miui/home/recents/BaseRecentsImpl$10;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$10$Oh4pU9W-UN6NO_gbhtPy9AVJWkM;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$BaseRecentsImpl$10$Oh4pU9W-UN6NO_gbhtPy9AVJWkM;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/BaseRecentsImpl$10;->lambda$onReceive$0(Lcom/miui/home/recents/BaseRecentsImpl$10;Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
