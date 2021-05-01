.class public final synthetic Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$pEb6v3tvwOQskA1JGIg1ltz8se4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

.field private final synthetic f$1:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$pEb6v3tvwOQskA1JGIg1ltz8se4;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$pEb6v3tvwOQskA1JGIg1ltz8se4;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$pEb6v3tvwOQskA1JGIg1ltz8se4;->f$0:Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$QuickstepAppTransitionManagerImpl$2$pEb6v3tvwOQskA1JGIg1ltz8se4;->f$1:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-static {v0, v1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;->lambda$onAnimationStart$525(Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl$2;Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method
