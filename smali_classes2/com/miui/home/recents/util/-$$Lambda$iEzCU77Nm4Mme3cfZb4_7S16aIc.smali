.class public final synthetic Lcom/miui/home/recents/util/-$$Lambda$iEzCU77Nm4Mme3cfZb4_7S16aIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/util/RectFSpringAnim;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/util/-$$Lambda$iEzCU77Nm4Mme3cfZb4_7S16aIc;->f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/util/-$$Lambda$iEzCU77Nm4Mme3cfZb4_7S16aIc;->f$0:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancelDirectly()V

    return-void
.end method
