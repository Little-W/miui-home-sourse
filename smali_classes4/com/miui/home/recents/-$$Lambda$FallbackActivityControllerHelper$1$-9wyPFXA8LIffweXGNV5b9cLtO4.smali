.class public final synthetic Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$-9wyPFXA8LIffweXGNV5b9cLtO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentsView;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$-9wyPFXA8LIffweXGNV5b9cLtO4;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$-9wyPFXA8LIffweXGNV5b9cLtO4;->f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    iput-boolean p3, p0, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$-9wyPFXA8LIffweXGNV5b9cLtO4;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$-9wyPFXA8LIffweXGNV5b9cLtO4;->f$0:Lcom/miui/home/recents/views/RecentsView;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$-9wyPFXA8LIffweXGNV5b9cLtO4;->f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    iget-boolean p0, p0, Lcom/miui/home/recents/-$$Lambda$FallbackActivityControllerHelper$1$-9wyPFXA8LIffweXGNV5b9cLtO4;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/FallbackActivityControllerHelper$1;->lambda$createActivityController$0(Lcom/miui/home/recents/views/RecentsView;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Z)V

    return-void
.end method
