.class public final synthetic Lcom/miui/home/recents/-$$Lambda$NavStubView$11$uEij4yANS_PNJGvs8REWl7xFJNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/NavStubView$11;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$uEij4yANS_PNJGvs8REWl7xFJNQ;->f$0:Lcom/miui/home/recents/NavStubView$11;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$uEij4yANS_PNJGvs8REWl7xFJNQ;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$uEij4yANS_PNJGvs8REWl7xFJNQ;->f$0:Lcom/miui/home/recents/NavStubView$11;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$NavStubView$11$uEij4yANS_PNJGvs8REWl7xFJNQ;->f$1:Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$11;->lambda$onAnimationEnd$2(Lcom/miui/home/recents/NavStubView$11;Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;)V

    return-void
.end method
